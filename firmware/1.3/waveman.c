#include "waveman.h"

#include "helpers.h"
#include "hardware_11.h" // TXPIN

void wavemanTx(char *s, char resends){
	#define WAV_HIGHSHORT  272
	#define WAV_HIGHLONG   1156
	#define WAV_PERIOD     1714
	#define WAV_LOWSHORT   (WAV_PERIOD-WAV_HIGHSHORT)
	#define WAV_LOWLONG    (WAV_PERIOD-WAV_HIGHLONG)
	#define WAV_BURSTDELAY 11500
	unsigned int data;
	unsigned int temp;
	char bitnr;

	data = reverse(s[0] - 65); // House code
	data <<= 8;
	temp = (s[1] - '0') * 10;         // Unit code
	temp += (s[2] - '0');
	temp--;
	temp = reverse(temp);
	temp <<= 4;
	data += temp;
	if (s[3] - '0') data |= 0x7;

	enter_tx();
	for (char resend = 0; resend < resends; resend++){
		temp = data;
		TXPIN = 1;
		waitTimer(WAV_HIGHSHORT);
		TXPIN = 0;
		waitTimer(WAV_LOWSHORT);
		for (bitnr = 0; bitnr < 12; bitnr++){	
			if(temp & 0x800){
				TXPIN = 1;
				waitTimer(WAV_HIGHLONG);
				TXPIN = 0;
				waitTimer(WAV_LOWLONG);
			}
			else{
				TXPIN = 1;
				waitTimer(WAV_HIGHSHORT);
				TXPIN = 0;
				waitTimer(WAV_LOWSHORT);
			}
			TXPIN = 1;
			waitTimer(WAV_HIGHSHORT);
			TXPIN = 0;
			waitTimer(WAV_LOWSHORT);
			temp <<= 1;
		}
		waitTimer(WAV_BURSTDELAY);
	}
	enter_rx();
}