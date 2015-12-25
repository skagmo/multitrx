#include "doro.h"

#include "uart.h"
#include "helpers.h"
#include "hardware_11.h" // TXPIN

#define is_long(x) ((x>32) && (x<40))
#define is_short(x) ((x>15) && (x<21))
enum doro_state {LOW, HIGH, INVALID, SKIP_LOW, SKIP_HIGH};
	
void doroDecode(uint8_t rf_state, uint8_t length){
	static enum doro_state state;
	static uint16_t data = 0;
	static uint8_t nrbits = 0;

	// Find doro bits
	if(rf_state){
		if (is_long(length)&&(!nrbits || (state==SKIP_LOW))) state = HIGH;
		else if (is_short(length)&&(!nrbits || (state==SKIP_HIGH))) state = LOW;
		else state = INVALID;
	}
	else{
		if (is_long(length)) state = SKIP_HIGH;
		else if (is_short(length)) state = SKIP_LOW;
		else state = INVALID;
	}

	// Store Doro bits
	if ((state == HIGH)||(state == LOW)){
		data <<= 1;
		if (state == HIGH) data |= 1;
		nrbits++;
	}
	else if (state == INVALID){
		if (nrbits == 13){
			uart_puts("$D");
			uart_put_hex((data&0xf00)>>8);
			uart_put_hex((data&0xf0)>>4);
			uart_put_hex(data&0xf);
			uart_puts("\r\n");
			blinkRxLed();
		}
		nrbits = 0;
	}
}
