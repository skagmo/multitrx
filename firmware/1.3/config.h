#ifndef CONFIG_H
#define	CONFIG_H

#include <stdint.h>

typedef struct{
	uint8_t version;
	uint8_t doro_en_rx;
	uint8_t gao_en_rx;
	uint8_t gao_sends;
	uint8_t esic_en_rx;
	uint8_t nexa_en_rx;
	uint8_t nexa_sends;
	uint8_t nexa_code_en;
	uint8_t waveman_sends;
	uint8_t kangthai_sends;
	uint8_t raw_en;
	uint8_t noise_floor;
}settings_t;

void loadDefaults(settings_t* settingsp);
void saveEeprom(settings_t* settingsp);
void loadEeprom(settings_t* settingsp);

#endif	/* CONFIG_H */
