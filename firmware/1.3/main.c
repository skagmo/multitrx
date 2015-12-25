// MultiTRX firmware, Jon Petter Skagmo, skagmo.com

#include <xc.h>
#include "hardware_11.h"
#include "config.h"
#include "uart.h"
#include "helpers.h"
#include "sample.h"

#include "gao.h"
#include "nexa_learning.h"
#include "nexa_code.h"
#include "esic.h"
#include "doro.h"
#include "kangthai.h"
#include "waveman.h"
#include "raw.h"

void interrupt intRoutineHigh(void){
	sample_interrupt(); // Transceiver data pin interrupt
	uart_interrupt();   // UART interrupt
}

int main(){
	hardware_init();
	uart_init(BAUDRATE);
	sample_init();
	GIE = 1;
	
	#define LINE_SIZE 32
	char line[LINE_SIZE];
	char line_len = 0;

	settings_t settings;
	loadEeprom(&settings);
	
	startupBlinkLed();
	uart_puts(STARTUPSTRING);	
	enter_rx(); // Go to RX mode

	while(1){
		while (sample_tick()){
			sample_t s = sample_pop();
			if (settings.raw_en) outputRaw (s.state, s.duration, s.rssi, &settings);
			
			// Truncate to 8 bit for remaining lines
			if (s.duration>0xff) s.duration=0xff; 
			if (settings.doro_en_rx) doroDecode(s.state, s.duration);
			if (settings.esic_en_rx) esicDecode(s.duration);
			if (settings.gao_en_rx) gaoDecode(s.state, s.duration);
			if (settings.nexa_en_rx) nexaDecode(s.state, s.duration);
			if (settings.nexa_code_en) nexaCodeDecode(s.state, s.duration);
		}

		// Check timer flag used for RX-led
		if(TMR3IF){
			RXLED = 0;
			TMR3ON = 0;
			TMR3IF = 0;
		}

		// Check UART buffer
		while(uart_in_waiting()){
			char c = uart_get();
			if(c == '$') line_len = 0;
			if((c == 10) || (c == 13)){
				if((line_len >= 2)&&(line[0]=='$')) parseCmd(&line, line_len, &settings);
				line_len = 0;
			}
			line[line_len++] = c;
		}
	}
}