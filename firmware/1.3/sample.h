#ifndef SAMPLE_H
#define	SAMPLE_H

#include <stdint.h>

typedef struct{
	uint8_t state;
	uint16_t duration;
	uint8_t rssi;
}sample_t;

void sample_init(void);
void sample_interrupt(void);
int sample_tick(void);
sample_t sample_pop(void);

#endif
