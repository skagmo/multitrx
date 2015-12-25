#include <xc.h>

#include <stdint.h>
#include "config.h"

#define CFG_VERSION 1
#define CFG_SIZE 12

void loadDefaults(settings_t* settingsp){
	settingsp->version = CFG_VERSION;
	settingsp->doro_en_rx = 1;
	settingsp->gao_en_rx = 1;
	settingsp->gao_sends = 6;
	settingsp->esic_en_rx = 1;
	settingsp->nexa_en_rx = 1;
	settingsp->nexa_sends = 5;
	settingsp->nexa_code_en = 1;
	settingsp->waveman_sends = 8;
	settingsp->kangthai_sends = 6;
	settingsp->raw_en = 0;
	settingsp->noise_floor = 150;
}settings_t;

void saveEeprom(settings_t* settingsp){
	uint8_t j;
	for (j=0; j<CFG_SIZE; j++) eeprom_write(j, ((uint8_t*)settingsp)[j]);
}

void loadEeprom(settings_t* settingsp){
	uint8_t j;
	if (eeprom_read(0) != CFG_VERSION) loadDefaults(settingsp);
	else for (j=0; j<CFG_SIZE; j++) ((uint8_t*)settingsp)[j] = eeprom_read(j);
}
