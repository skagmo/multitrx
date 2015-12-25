#ifndef _UARTRING_H_
#define _UARTRING_H_

#define BUFFER_SIZE 128
#define BUFFER_MASK (BUFFER_SIZE - 1)

#define sInterrupt()						\
	if(RCIF){								\
		rxbuffer[rxip] = RCREG;				\
		rxip = (rxip+1) & BUFFER_MASK;		\
	}										\
	if(TXIF && TXIE){						\
		TXREG = txbuffer[txop];				\
		txop = (txop+1) & BUFFER_MASK;		\
		if(txop == txip) TXIE = 0;			\
	}

void sInit(unsigned long baud);
char sInWaiting(void);
char sGet(void);
void sPut(char c);
void sPuts(const char *s);
void sPutint(unsigned int input);
void sPutonehex(char data);
void sPuthex(char input);

#ifndef _UARTRING_C_
extern volatile char rxbuffer[BUFFER_SIZE];
extern volatile char txbuffer[BUFFER_SIZE];
extern volatile char txip, txop, rxip, rxop;
#endif

#include "uartring.c"

#endif
