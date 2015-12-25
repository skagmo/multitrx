#include "nexa_code.h"

#include "uart.h"
#include "helpers.h"
#include "hardware_11.h" // TXPIN

#define TOL 10
#define SHORT 22
#define LONG 66

#define is_long(x) (x>(LONG-TOL) && x<(LONG+TOL))
#define is_short(x) (x>(SHORT-TOL) && x<(SHORT+TOL))

enum nexa_code_state {NONE, INVALID, _S, SL, SLL, SLS, SLLS, SLSL};

void nexaCodeDecode(uint8_t bitstate, uint8_t length) {
	static enum nexa_code_state state = NONE;
	static uint16_t data;
	static uint8_t symbol_nr = 0;

	if (length > 100) {
		state = NONE;
		symbol_nr = 0;
		return;
	}

	switch(state){
		case INVALID:
			symbol_nr = 0;
		case NONE:
			if (bitstate && is_short(length)) state = _S;
			else state = INVALID;
			break;
			
		case _S:
			if (!bitstate && is_long(length)) state = SL;
			else state = INVALID;
			break;
			
		case SL:
			if (bitstate && is_long(length)) state = SLL;
			else if (bitstate && is_short(length)) state = SLS;
			else state = INVALID;
			break;
			
		case SLS:
			if (!bitstate && is_long(length)) {
				state = NONE;
				data >>= 1;
				symbol_nr++;
			}
			else state = INVALID;
			break;
			
		case SLL:
			if (!bitstate && is_short(length)) {
				state = NONE;
				data = (data >> 1) | 0x800;
				symbol_nr++;
			}
			else state = INVALID;
			break;
	}
	
	if ((symbol_nr==12) && (state==NONE)){
		uart_puts("$C");
		uart_put('A' + (data&0xf));
		uint8_t unit = ((data&0xf0) >> 4) + 1;
		if (unit==16) unit = 0;
		uart_put_hex(unit);
		if (data&0x800) uart_put('1');
		else uart_put('0');
		uart_puts("\r\n");
		blinkRxLed();
	}
}