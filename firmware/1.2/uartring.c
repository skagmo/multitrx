#define _UARTRING_C_
//#include "uartring.h"

volatile char rxbuffer[BUFFER_SIZE];
volatile char txbuffer[BUFFER_SIZE];
volatile char txip, txop, rxip, rxop;

void sInit(unsigned long baud){
	unsigned long spbrg_calc = ((_XTAL_FREQ/baud)/16)-1;
	TXSTA   = 0b00100100; // Async, TXEN, high speed
	RCSTA   = 0b10010000; // SPEN, CREN
	BAUDCON = 0;          // 8-bit BRG
	SPBRG   = spbrg_calc;
	INTCON |= 0b01000000; // GIE|PEIE|TMR0IE|INT0IE|RBIE|TMR0IF|INT0IF|RBIF
	PIE1   |= 0b00110000; // RCIE
	txip = txop = rxip = rxop = 0;
}

char sInWaiting(void){
	if (OERR){
		CREN = 0;
		CREN = 1;
		return 0;
	}
	return (rxip!=rxop);
}

char sGet(void){
	char c;
	GIE = 0;
	c = rxbuffer[rxop];
	rxop = (rxop+1) & BUFFER_MASK;
	GIE = 1;
	return c;
}

void sPut(char c){
	GIE = 0;
	if(txop == ((txip+1) & BUFFER_MASK)){
		GIE = 1;
		while(TXIE);
		GIE = 0;
	}
	txbuffer[txip] = c;
	txip = (txip+1) & BUFFER_MASK;
	TXIE = 1;
	GIE = 1;
}

void sPuts(const char *s){
	while(*s) sPut(*s++);
}

void sPutint(unsigned int input){
	char buffer[7];
	char start = 0;
	char stop = 0;
	if(input > 0b0111111111111111){
		buffer[0] = '-';
		start = 1;
		stop = 1;
		input = (input^0b1111111111111111) + 1;
	}
	unsigned int temp = input;
	while(temp >= 10){
		stop += 1;
		temp /= 10;
	}
	for (signed char j=stop; j>=start; j--){
		buffer[j] = input%10 + '0';
		input /= 10;
	}
	buffer[stop+1] = 0;
	sPuts(&buffer);
}

void sPutonehex(char data){
	if(data < 10) sPut(data + '0');
	else sPut(data + 55);
}

void sPuthex(char input){
	sPutonehex((input & 0b11110000) >> 4);
	sPutonehex(input & 0b00001111);
}