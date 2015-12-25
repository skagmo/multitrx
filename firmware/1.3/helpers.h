#ifndef _HELPERS_H
#define _HELPERS_H

#include "config.h"
#include <stdint.h>
void delayms(int ms);
void waitTimer(unsigned int value);
char asciiToHex(char input);
char reverse(char input);
void enter_tx(void);
void enter_rx(void);
void startupBlinkLed(void);
void blinkRxLed(void);
uint16_t readAd(void);
void parseSettings(char *linep, char line_len, settings_t *settingsp);
void parseCmd(char *linep, char line_len, settings_t *settingsp);

#endif