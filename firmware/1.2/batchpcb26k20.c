// MultiTRX PIC software - skagmo.com
// SW 1.2

#define _LEGACY_HEADERS
#include <htc.h>
#include "hardware_config_11.h"
#include "uartring.h"

typedef struct{
	char nr_settings;  //Must be first
	char bmc_en_rx;
	char bmc_sends;
	char bmc_en_hex;
	char bmc_repeat;
 	char bmc_hops;
	char doro_en_rx;
	char gao_en_rx;
	char gao_sends;
	char esic_en_rx;
	char nexa_en_rx;
	char nexa_sends;
	char waveman_sends;
	char kangthai_sends;
}settings_t;

void loadDefaults(settings_t *settingsp){
	settingsp->nr_settings = 14;
	settingsp->bmc_en_rx = 1;
	settingsp->bmc_sends = 2;
	settingsp->bmc_en_hex = 0;
	settingsp->bmc_repeat = 1;
 	settingsp->bmc_hops = 2;
	settingsp->doro_en_rx = 1;
	settingsp->gao_en_rx = 1;
	settingsp->gao_sends = 6;
	settingsp->esic_en_rx = 1;
	settingsp->nexa_en_rx = 1;
	settingsp->nexa_sends = 5;
	settingsp->waveman_sends = 8;
	settingsp->kangthai_sends = 6;
}settings_t;

void saveEeprom(char* settingsp){
	for (char j=0; j<settingsp[0]; j++)	eeprom_write(j, settingsp[j]);
}

void loadEeprom(char* settingsp){
	for (char j=0; j<eeprom_read(0); j++) settingsp[j] = eeprom_read(j);
}

void interrupt intRoutineHigh(void){
	sInterrupt();
}

void delayms(int ms){
	for (int counter = 0; counter < ms; counter++) __delay_ms(1);
}

void waitTimer(unsigned int value){ //Steps of approx. 1uS
	value = 0xFFFF - value;
	TMR1L = value & 0x00FF;
	TMR1H = (value & 0xFF00) >> 8;
	TMR1ON = 1;
	while(!TMR1IF);
	TMR1ON = 0;
	TMR1IF = 0;
}

char asciiToHex(char input){
	if(input <= '9') input -= '0';
	else input -= 55;
	return input;
}

char reverse(char input){
	char output = 0;
	if (input & 0b00000001) output |= 0b00001000;
	if (input & 0b00000010) output |= 0b00000100;
	if (input & 0b00000100) output |= 0b00000010;
	if (input & 0b00001000) output |= 0b00000001;
	return output;
}

void startTransmit(){
	TXLED = 1;
	TRPIN = 1;
	delayms(3);
	dataPinOut();
} 

void stopTransmit(){
	dataPinIn();
	delayms(3);
	TRPIN = 0;
	TXLED = 0;
	sPuts(ACKSTRING);
	sPut(10);
}

void startupBlinkLed(){
	char j;
	for (j = 0; j < 5; j++){
		TXLED = RXLED ^= 1;
		delayms(100);
	}
}

void blinkRxLed(){
	RXLED = 1;
	TMR3H = 0; TMR3L = 0;
	TMR3ON = 1;
}

unsigned int readAd(){
	char value = 0;
	int temp = 0;
	for (int j=0; j<1000; j++){
		ADCON0 |= 0b00000011;  // AD GO & AD enable
		while(ADCON0 & 0b00000010);  // While ~DONE
		temp = (ADRESH<<8) | ADRESL;
		temp >>= 2;
		if (temp > value) value = temp;
	}
	return value;
}

#include "bmc.h"
#include "gao.h"
#include "nexa.h"
#include "esic.h"
#include "doro.h"
#include "kangthai.h"
#include "waveman.h"

void parseSettings(char *linep, char line_len, settings_t *settingsp){
	if(line_len == 1){
		sPut(10);
		sPuts("--------- Settings ----------"); sPut(10);
		sPuts("BMC:"); sPut(10);
		sPuts(" [B] En. RX = "); sPut('0' + settingsp->bmc_en_rx);  sPut(10);
		sPuts(" [M] Sends  = "); sPut('0' + settingsp->bmc_sends); sPut(10);
		sPuts(" [C] In hex = "); sPut('0' + settingsp->bmc_en_hex);  sPut(10);
		sPuts(" [R] Repeat = "); sPut('0' + settingsp->bmc_repeat);  sPut(10);
		sPuts(" [H] Hops   = "); sPut('0' + settingsp->bmc_hops);  sPut(10);
		sPuts("Doro:"); sPut(10);
		sPuts(" [D] En. RX = "); sPut('0' + settingsp->doro_en_rx);  sPut(10);
		sPuts("GAO:"); sPut(10);
		sPuts(" [G] En. RX = "); sPut('0' + settingsp->gao_en_rx);  sPut(10);
		sPuts(" [A] Sends  = "); sPut('0' + settingsp->gao_sends); sPut(10);
		sPuts("Esic:"); sPut(10);
		sPuts(" [E] En. RX = "); sPut('0' + settingsp->esic_en_rx);  sPut(10);
		sPuts("Nexa:"); sPut(10);
		sPuts(" [N] En. RX = "); sPut('0' + settingsp->nexa_en_rx);  sPut(10);
		sPuts(" [X] Sends  = "); sPut('0' + settingsp->nexa_sends); sPut(10);
		sPuts("Waveman:"); sPut(10);
		sPuts(" [W] Sends  = "); sPut('0' + settingsp->waveman_sends); sPut(10);
		sPuts("Kangthai:"); sPut(10);
		sPuts(" [K] Sends  = "); sPut('0' + settingsp->kangthai_sends); sPut(10);
		sPuts("Settings:"); sPut(10);
		sPuts(" [S] EEPROM save"); sPut(10);
		sPuts(" [L] EEPROM load"); sPut(10);
		sPuts(" [F] Load defaults"); sPut(10);
		sPuts("Other:"); sPut(10);
		sPuts(" Curr. RSSI = "); sPutint(readAd()); sPut(10);
	}
	else{
		switch (linep[0]){
			case 'B':
				settingsp->bmc_en_rx = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'M':
				settingsp->bmc_sends = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'C':
				settingsp->bmc_en_hex = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'R':
				settingsp->bmc_repeat = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'H':
				settingsp->bmc_hops = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'D':
				settingsp->doro_en_rx = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'G':
				settingsp->gao_en_rx = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'A':
				settingsp->gao_sends = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;				
			case 'E':
				settingsp->esic_en_rx = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'N':
				settingsp->nexa_en_rx = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'X':
				settingsp->nexa_sends = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'W':
				settingsp->waveman_sends = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'K':
				settingsp->kangthai_sends = linep[1] - '0';
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'S':
				saveEeprom(settingsp);
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'L':
				loadEeprom(settingsp);
				sPuts(ACKSTRING);
				sPut(10);
				break;
			case 'F':
				loadDefaults(settingsp);
				sPuts(ACKSTRING);
				sPut(10);
				break;
		}
	}
}

void parseCmd(char *linep, char line_len, settings_t *settingsp){
	switch(linep[1]){
		case 'G':
			if (line_len == 9) gaoTx(linep+2, settingsp->gao_sends);
			break;
		case 'W':
			if (line_len == 7) wavemanTx(linep+2, settingsp->waveman_sends);
			break;
		case 'N':
			if ((line_len >= 13)&&(line_len <= 14)) nexaTx(linep+2, settingsp->nexa_sends);
			break;
		case 'K':
			if (line_len == 10) kangthaiTx(linep+2, settingsp->kangthai_sends);
			break;
		case 'B':
			if (line_len >= 4){
				line_len -= 3; // To remove command and LF
				if(settingsp->bmc_en_hex) bmcConvertHex(linep+2, &line_len);
				bmcTx(linep+2, line_len, settingsp->bmc_hops, settingsp->bmc_sends);
			}
			break;
		case 'P':
			sPuts(STARTUPSTRING);
			sPut(10);
			break;
		case 'S':
			parseSettings(linep+2, line_len-2, settingsp);
			break;
		case 'X':
			RESET();
			break;
		case '!':
			startTransmit();
			TXPIN = 1;
			delayms(5000);
			stopTransmit();
			break;
	}
}

void main(){
	init();
	sInit(BAUDRATE);
	startupBlinkLed();
	sPuts(STARTUPSTRING);
	sPut(10);
	TRPIN = 1;
	delayms(5);
	TRPIN = 0;

	char rf_state        = 0;
	char prev_rf_state   = 0;
	char rf_pulse_length = 0;

	#define LINE_SIZE 32
	char line[LINE_SIZE];
	char line_len = 0;
	char temp_c;

	settings_t settings;
	loadEeprom(&settings);

	while(1){
		// Check RF
		rf_state = RXPIN;
		if (prev_rf_state != rf_state){
			rf_pulse_length = TMR0L;
			if(TMR0IF){    //If the timer has gone through an overflow
				rf_pulse_length = 0xFF;
				TMR0IF = 0;
			}
			TMR0L  = 0;
			if (settings.doro_en_rx) doroDecode(prev_rf_state, rf_pulse_length);
			if (settings.esic_en_rx) esicDecode(rf_pulse_length);
			if (settings.gao_en_rx)  gaoDecode (prev_rf_state, rf_pulse_length);
			if (settings.nexa_en_rx) nexaDecode(prev_rf_state, rf_pulse_length);
			if (settings.bmc_en_rx)  bmcDecode (rf_pulse_length, &settings);
		}
		prev_rf_state = rf_state;

		// Check timer flag used for RX-led
		if(TMR3IF){
			RXLED = 0;
			TMR3ON = 0;
			TMR3IF = 0;
		}

		// Check UART buffer
		while(sInWaiting()){
			temp_c = sGet();
			if(temp_c == '$') line_len = 0;
			line[line_len++] = temp_c;
			if((temp_c == 10) || (temp_c == 13)){
				if((line_len >= 3)&&(line[0]=='$')) parseCmd(&line, line_len, &settings);
				line_len = 0;
			}
		}
	}
}