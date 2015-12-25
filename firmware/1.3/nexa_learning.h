#ifndef NEXA_H
#define NEXA_H

#include <stdint.h>
void nexaTx(char *s, uint8_t len, uint8_t resends);
void nexaDecode(char rf_state, char rf_pulse_length);

#endif