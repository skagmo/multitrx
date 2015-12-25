#include "kangthai.h"

#include "helpers.h"
#include "hardware_11.h" // TXPIN

void kangthaiTx(char *s, char resends){
	#define KAN_BITTIME  357
	#define KAN_BURSTDELAY 10000
	unsigned long data = 0;
	unsigned long temp;

	for (char j=0; j<5; j++){
		data |= s[j] - '0';
		data <<= 1;
	}
	for (char j=0; j<5; j++){
		if((s[5] - 'A') == j) data |= 1;
		data <<= 1;
	}
	data <<= 1;
	if(s[6] == '1') data |= 0b10; // On/off
	else data |= 0b01;

	enter_tx();
	for (char resend = 0; resend < resends; resend++){
		temp = data;
		TXPIN = 1;                                 //Preable
		waitTimer(KAN_BITTIME);
		TXPIN = 0;
		waitTimer(KAN_BITTIME*3);
		for (char bitnr = 0; bitnr < 12; bitnr++){	
			TXPIN = 1;
			if(temp & 0b100000000000) waitTimer(KAN_BITTIME);
			else waitTimer(KAN_BITTIME*3);
			TXPIN = 0;
			if(temp & 0b100000000000) waitTimer(KAN_BITTIME*3);
			else waitTimer(KAN_BITTIME);
			TXPIN = 1;
			waitTimer(KAN_BITTIME);
			TXPIN = 0;
			waitTimer(KAN_BITTIME*3);
			temp <<= 1;
		}
		waitTimer(KAN_BURSTDELAY);
	}
	enter_rx();
}