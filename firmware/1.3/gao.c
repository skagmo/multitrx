#include "gao.h"

#include "uart.h"
#include "helpers.h"
#include "hardware_11.h" // TXPIN

void gaoTx(char *s, char resends){
	#define GAO_BITTIME    590
	#define GAO_BURSTDELAY 7000
	unsigned long temp;
	unsigned long data = 0;

	for (char j = 0; j < 5; j++){
		data |= asciiToHex(s[j]);
		data <<= 4;
	}
	if((s[5] - '0') == 1) data |= 0xF; // On/off
	if((s[5] - '0') == 2) data |= 0xA; // Pair

	enter_tx();
	for (char resend = 0; resend < resends; resend++){
		temp = data;
		for (char preamble = 0; preamble < 4; preamble++){
			TXPIN = 1;                                 //Preable
			waitTimer(GAO_BITTIME);
			TXPIN = 0;
			waitTimer(GAO_BITTIME);
		}
		for (char bitnr = 0; bitnr < 24; bitnr++){
			TXPIN = 1;
			waitTimer(GAO_BITTIME);			
			TXPIN = 0;	
			if(temp & 0b100000000000000000000000) waitTimer(GAO_BITTIME*2);
			else waitTimer(GAO_BITTIME);
			TXPIN = 1;
			waitTimer(GAO_BITTIME);
			TXPIN = 0;
			if(temp & 0b100000000000000000000000) waitTimer(GAO_BITTIME);
			else waitTimer(GAO_BITTIME*2);
			temp <<= 1;
		}
		TXPIN = 1;
		waitTimer(GAO_BITTIME/2);
		TXPIN = 0;
		waitTimer(GAO_BURSTDELAY);
	}
	enter_rx();
}

void gaoPrint(unsigned long data){
	unsigned long number;
	uart_puts("$G");
	for (char j = 0; j < 5; j++){
		number = data & 0xF0000000;
		data <<= 4;
		number >>= 28;
		uart_put_hex(number);
	}
	if ((data & 0xF0000000) == 0xF0000000) uart_put('1');
	else if ((data & 0xF0000000) == 0xA0000000) uart_put('2');
	else uart_put('0');
	uart_puts("\r\n");
	blinkRxLed();
}

void gaoDecode(char rf_state, char rf_pulse_length){
	#define LOW       0
	#define HIGH      1
	#define INVALID   2
	#define SKIP      4
	#define PASYMBOL  5
	#define PREAMBLE  0
	#define DATA      1
	static char symbols = 0;   // Four symbols form one bit
	static char nrsymbols = 0;
	static char gaobit;
	static unsigned long data = 0;
	static char nrbits = 0;
	static char preamble_data = 0;
	static char state = PREAMBLE;

	// Find GAO symbols and bits
	gaobit = SKIP;
	if (rf_state){
		if ((rf_pulse_length > 20)&&(rf_pulse_length < 55)){
			symbols &= (0xFF ^ (1 << nrsymbols));
			nrsymbols++;
		}
		else{
			nrsymbols = 0;
			gaobit = INVALID;
		}
	}
	else{
		if((rf_pulse_length > 20)&&(rf_pulse_length < 55)){
			symbols &= (0xFF ^ (1 << nrsymbols));
			nrsymbols++;
		}
		else if((rf_pulse_length > 55)&&(rf_pulse_length < 90)){
			symbols |= (1 << nrsymbols);
			nrsymbols++;
		}
		else{
			nrsymbols = 0;
			gaobit = INVALID;
		}
	}

	if (nrsymbols >= 4){
		if (symbols == 0) gaobit = PASYMBOL;
		else if (symbols == 0b1000) gaobit = LOW;
		else if (symbols == 0b0010) gaobit = HIGH;
		else gaobit = INVALID;
		nrsymbols = 0;
	}

	// Decode GAO
	if(gaobit == SKIP) return;
	switch (state){
		case PREAMBLE:
			if ((gaobit == PASYMBOL)&&(preamble_data == PASYMBOL)) state = DATA;
			preamble_data = gaobit;
			break;
		case DATA:
			if ((gaobit == INVALID)||(gaobit == PASYMBOL)){
				if (nrbits >= 24){
					data <<= 8;
					gaoPrint(data);
				}
				preamble_data = gaobit;
				nrbits = 0;
				state = PREAMBLE;
			}
			else{
				data <<= 1;
				data |= gaobit;
				nrbits++;
			}
			break;
	}
}