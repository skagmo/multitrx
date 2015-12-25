#include "hardware_11.h"

void hardware_init(void){
	// Pin directions
	TRISC = 0b10000000;
	TRISB = 0b00000110;
	TRISA = 0b00000000;
	
	// Oscillator
	OSCCON  = 0b01100000;  // 8MHz for 26K20    //Settes i BL
	OSCTUNE = 0b11000000;  // 4*PLL 		    //Settes i BL
	
	// Set up timers
	T3CON = 0b00110101;   // Used for RX-LED      //Settes i BL
	T1CON = 0b01111001;   // General purpose (eg. transmission), 1uS step
	WDTCON = 0;			  // Settes i BL
}

void dataPinOut(void){
	TRISB = 0b00000010;
}

void dataPinIn(void){
	TRISB = 0b00000110;
}