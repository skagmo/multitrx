#include "nexa_learning.h"

#include "uart.h"
#include "helpers.h"
#include "hardware_11.h" // TXPIN

void nexaTx(char *s, uint8_t len, uint8_t resends){
	#define NEXA_HIGH 204
	#define NEXA_LOWSHORT 272
	#define NEXA_LOWLONG 1326
	#define NEXA_LOWSTART 2720
	#define NEXA_BURSTDELAY 10000
	
	uint32_t temp;
	uint8_t bitnr;
	uint8_t data_len = 32;
	uint32_t data[2];
	
	// 24 bits of ID
	for (char j=0; j<6; j++) data[0] = (data[0]<<4) | asciiToHex(s[j]);
	
	// Two bits of ID
	data[0] = (data[0]<<2) | (asciiToHex(s[6])&0x3);
	
	data[0] <<= 6;
	if (s[7] == '1') data[0] |= 0x20;   // Group enable
	data[0] |= asciiToHex(s[8]);		// Channel
	if (s[9] > '0') data[0] |= 0x10;	// Power on
	if (len==11){
		data[1] = (uint32_t)asciiToHex(s[10]) << 28;  // Dim-level
		data_len = 36;
	}

	enter_tx();
	for (char resend = 0; resend < resends; resend++){
		TXPIN = 1;
		waitTimer(NEXA_HIGH);
		TXPIN = 0;
		waitTimer(NEXA_LOWSTART);
		temp = data[0];
		for (bitnr = 0; bitnr < data_len; bitnr++){
			if (bitnr==32) temp = data[1];
			TXPIN = 1;
			waitTimer(NEXA_HIGH);
			TXPIN = 0;
			if(!(temp & 0x80000000) || ((bitnr==27)&&(s[9] == '2')))  waitTimer(NEXA_LOWSHORT); 
			else waitTimer(NEXA_LOWLONG);
			TXPIN = 1;
			waitTimer(NEXA_HIGH);
			TXPIN = 0;
			if(temp & 0x80000000) waitTimer(NEXA_LOWSHORT); // Matches dim-symbol as well
			else waitTimer(NEXA_LOWLONG);
			temp <<= 1;
		}
		TXPIN = 1;                             //End-pulse + burst separation
		waitTimer(NEXA_HIGH);
		TXPIN = 0;
		waitTimer(NEXA_BURSTDELAY);
	}
	enter_rx();
}

enum nexa_learning_state{
	NONE, 
	INVALID, 
	_S, 
	_SS, 
	_SSS,
	_SL,
	_SLS,
	FINISHED
};

#define is_high_short(x) (x>8 && x<15)	// 13, but first zero can be up to 30
#define is_low_short(x) (x>15 && x<25)	// 21
#define is_low_long(x) (x>60 && x<100)	// 84
#define is_low_start(x) (x>100 && x<250)  // 168
#define is_low_between(x) (x==0xff)		// 168

void nexaDecode(uint8_t bitstate, uint8_t length){
	// Up to 36 symbols in data
	static enum nexa_learning_state state = INVALID;
	static uint32_t data[2];
	static uint8_t bit_nr = 0;
	static uint8_t dim_found = 0;

	// Find Nexa symbols  //12, 20, 84
	switch(state){
		case FINISHED:
		case INVALID:
			bit_nr = 0;
			dim_found = 0;
			// Fallthrough
		case NONE:
			if (bitstate && is_high_short(length)) state = _S;
			else state = INVALID;
			break;

		case _S:
			if (!bitstate){
				if (is_low_short(length)) state = _SS;
				else if (is_low_long(length)) state = _SL;
				else if (is_low_start(length)){
					bit_nr = 0;
					state = NONE;
				}
				else if (is_low_between(length)) state = FINISHED;
				else state = INVALID;
			}
			else state = INVALID;
			break;

		case _SS:
			if (bitstate && is_high_short(length)) state = _SSS;
			else state = INVALID;
			break;

		case _SL:
			if (bitstate && is_high_short(length)) state = _SLS;
			else state = INVALID;
			break;
			
		case _SSS:
			if (!bitstate && is_low_short(length) && (bit_nr==27)){
				dim_found = 1;
				data[bit_nr/32] <<= 1;
				bit_nr++;
				state = NONE;
			}
			else if (!bitstate && is_low_long(length)){
				data[bit_nr/32] <<= 1;
				bit_nr++;
				state = NONE;
			}
			else state = INVALID;
			break;
			
		case _SLS:
			if (!bitstate && is_low_short(length)){
				data[bit_nr/32] = (data[bit_nr/32] << 1) | 1;
				bit_nr++;
				state = NONE;
			}
			else state = INVALID;
			break;
	}

	// Decode Nexa
	if (state == FINISHED){
		uint8_t dimlevel = 0xff;
		switch (bit_nr){
			case 36:
				dimlevel = data[1] & 0xF;
			case 32:
				{
					uint8_t channel = data[0] & 0xF;
					data[0] >>= 4;
					uint8_t power = data[0] & 1;
					data[0] >>= 1;
					uint8_t group_en = data[0] & 1;
					data[0] >>= 1;
					uint32_t id = data[0] & 0x3ffffff;

					int j;
					uart_puts("$N");
					for (j=22; j>=2; j-=4) uart_put_hex((id>>j) & 0xf);
					uart_put_hex(id&0x3);
					uart_put('0' + group_en);
					uart_put_hex(channel);
					uart_put('0' + power + (dim_found*2));
					if (dimlevel != 0xff) uart_put_hex(dimlevel);
					uart_puts("\r\n");
					blinkRxLed();
				}
				break;
		}
	}
}
