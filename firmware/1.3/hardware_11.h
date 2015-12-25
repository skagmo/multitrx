#ifndef HARDWARE_11_H
#define HARDWARE_11_H

// BatchPCB-revision, HWID 1.1

#include <xc.h>

#pragma config FOSC = INTIO67   // Oscillator Selection bits (Internal oscillator block, port function on RA6 and RA7)
#pragma config WDTEN = OFF      // Watchdog Timer Enable bit (WDT is controlled by SWDTEN bit of the WDTCON register)
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits (1:32768)
#pragma config PBADEN = OFF     // PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
#pragma config HFOFST = OFF     // HFINTOSC Fast Start-up (The system clock is held off until the HFINTOSC is stable.)
#pragma config MCLRE = OFF      // MCLR Pin Enable bit (RE3 input pin enabled; MCLR disabled)
#pragma config LVP = OFF        // Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)

#define STARTUPSTRING "MultiTRX HWID 1.1, FWID 1.3 - skagmo.com\r\n"
#define ACKSTRING "$OK\r\n"
#define TRPIN LATB3
#define RXPIN (PORTB&0b100)
#define TXPIN LATB2
#define TXLED LATC4
#define RXLED LATC5
#define _XTAL_FREQ 32000000
#define BAUDRATE 115200

void hardware_init(void);
void dataPinOut(void);
void dataPinIn(void);

#endif