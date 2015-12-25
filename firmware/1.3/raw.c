#include "raw.h"

#include "stdint.h"
#include "hardware_11.h"
#include "uart.h"
#include "helpers.h"

#include "sample.h"
extern volatile sample_t samples[32];

void outputRaw(uint8_t rf_state, uint16_t rf_length, uint8_t rssi, settings_t* settingsp) {
	static uint8_t last_rssi = 0;
	static uint8_t last_above = 0;
	
	if (rf_state) last_rssi = rssi;

	if (last_rssi > settingsp->noise_floor){
		// 10fsllll llllllll
		last_above = 1;
		uart_put(0b10000000 | (rf_state << 4) | ((rf_length & 0x0F00)>>8));
		uart_put(rf_length & 0x00FF);
	}
	else if(last_above){
		uart_put(0b10100000);
		uart_put(0b00000000);
		last_above = 0;
	}
}
