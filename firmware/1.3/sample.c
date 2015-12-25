#include "sample.h"

#include <xc.h>
#include "hardware_11.h"
#include "uart.h"

#define SAMPLES_SIZE 32
volatile sample_t samples[SAMPLES_SIZE];
volatile uint8_t samples_ip;
uint8_t samples_op;
volatile uint16_t current_rssi;

void sample_init(void){
	// Used for RF-decoding //Settes i BL, 16uS step, 16-bit
	T0CON = 0b10000110;   
	
	// AD-config
	ANSEL  = 0b00000000;
	ANSELH = 0b00000100;  // RB1 analog
	ADCON0 = 0b00101001;  // AD on, RB1 aka AN10 for RSSI
	ADCON1 = 0b00000000;
	ADCON2 = 0b10001000;  // Right justified, 2 TAD, FOSC/2
}

void sample_interrupt(void){
	if (INTCON3bits.INT2IF){
//		// Reset flag
		INTCON3bits.INT2IF = 0;
		
		// Copy duration
		samples[samples_ip].duration = (TMR0H<<8)|TMR0L;
		TMR0L = TMR0H = 0;
		if(TMR0IF){    //If value is bigger than 0xFFFF
			samples[samples_ip].duration = 0xFFFF;
			TMR0IF = 0;
		}
		
		// Copy state, previous state was opposite
		if (RXPIN) samples[samples_ip].state = 0;
		else samples[samples_ip].state = 1;
		
		// Copy RSSI
		samples[samples_ip].rssi = current_rssi;
		current_rssi = 0;

		// Increase queue position
		samples_ip = (samples_ip+1) & (SAMPLES_SIZE-1); 
		
		// Trigger on opposite edge next time
		if (INTCON2bits.INTEDG2) INTCON2bits.INTEDG2 = 0; 
		else INTCON2bits.INTEDG2 = 1;
	}
}

int sample_tick(void){
	// Update RSSI reading
	if (!(ADCON0 & 0b00000010)) {
		uint16_t rssitemp = ((ADRESH<<8) | ADRESL) >> 2;
		current_rssi = (current_rssi>rssitemp)?current_rssi:rssitemp;
		ADCON0bits.GO = 1; // Start new conversion
	}
	
	if (samples_ip != samples_op) return 1;
	return 0;
}

sample_t sample_pop(void){
	sample_t s = samples[samples_op];	
	samples_op = (samples_op+1) & (SAMPLES_SIZE-1);
	return s;
}