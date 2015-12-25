#ifndef RAW_H
#define RAW_H

#include <stdint.h>
#include "config.h"

void outputRaw(uint8_t rf_state, uint16_t rf_length, uint8_t rssi, settings_t* settingsp);

#endif