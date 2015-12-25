#include "helpers.h"

#include "hardware_11.h"
#include "uart.h"

#include "gao.h"
#include "nexa_learning.h"
#include "nexa_code.h"
#include "esic.h"
#include "doro.h"
#include "kangthai.h"
#include "waveman.h"
#include "raw.h"

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

void enter_tx(void){
	INTCON3bits.INT2IF = 0;
	INTCON3bits.INT2IE = 0;
	TXLED = 1;
	TRPIN = 1;
	delayms(3);
	dataPinOut();
} 

void enter_rx(void){
	dataPinIn();
	delayms(3);
	TRPIN = 0;
	TXLED = 0;
	uart_puts(ACKSTRING);
	INTCON3bits.INT2IF = 0;
	INTCON3bits.INT2IE = 1;
}

void startupBlinkLed(void){
	char j;
	TXLED = RXLED = 0;
	for (j = 0; j < 5; j++){
		TXLED = RXLED ^= 1;
		delayms(100);
	}
}

void blinkRxLed(void){
	RXLED = 1;
	TMR3H = 0;
	TMR3L = 0;
	TMR3ON = 1;
}

uint16_t readAd(void){
	uint16_t value = 0;
	uint16_t temp = 0;
	for (int j=0; j<1000; j++){
		ADCON0 |= 0b00000011;  // AD GO & AD enable
		while(ADCON0 & 0b00000010);  // While ~DONE
		temp = (ADRESH<<8) | ADRESL;
		temp >>= 2;
		if (temp > value) value = temp;
	}
	return value;
}

void parseSettings(char* linep, char line_len, settings_t* settingsp){
	if(line_len == 0){
		uart_puts("\r\n");
		uart_puts("--------- Settings ----------\r\n");
		uart_puts("Doro:\r\n");
		uart_puts(" [D] En. RX = "); uart_put('0' + settingsp->doro_en_rx);  uart_puts("\r\n");
		uart_puts("GAO:\r\n");
		uart_puts(" [G] En. RX = "); uart_put('0' + settingsp->gao_en_rx);  uart_puts("\r\n");
		uart_puts(" [A] Sends = "); uart_put('0' + settingsp->gao_sends); uart_puts("\r\n");
		uart_puts("Esic:\r\n");
		uart_puts(" [E] En. RX = "); uart_put('0' + settingsp->esic_en_rx);  uart_puts("\r\n");
		uart_puts("Nexa:\r\n");
		uart_puts(" [N] En. RX learning = "); uart_put('0' + settingsp->nexa_en_rx);  uart_puts("\r\n");
		uart_puts(" [Y] En. RX code = "); uart_put('0' + settingsp->nexa_code_en); uart_puts("\r\n");
		uart_puts(" [X] Sends = "); uart_put('0' + settingsp->nexa_sends); uart_puts("\r\n");
		uart_puts("Waveman:\r\n");
		uart_puts(" [W] Sends = "); uart_put('0' + settingsp->waveman_sends); uart_puts("\r\n");
		uart_puts("Kangthai:\r\n");
		uart_puts(" [K] Sends = "); uart_put('0' + settingsp->kangthai_sends); uart_puts("\r\n");
		uart_puts("Raw data:\r\n");
		uart_puts(" [R] En RX = "); uart_put('0' + settingsp->raw_en); uart_puts("\r\n");
		uart_puts("Settings:\r\n");
		uart_puts(" [S] EEPROM save\r\n");
		uart_puts(" [L] EEPROM load\r\n");
		uart_puts(" [F] Load defaults\r\n");
		uart_puts("Other:\r\n");
		uart_puts(" [I] Set noise floor\r\n");
		uart_puts(" Curr. RSSI = "); uart_put_int(readAd()); uart_puts("\r\n");
		uart_puts(" Noise floor = "); uart_put_int(settingsp->noise_floor); uart_puts("\r\n");
	}
	else{
		switch (linep[0]){
			case 'D':
				settingsp->doro_en_rx = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'G':
				settingsp->gao_en_rx = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'A':
				settingsp->gao_sends = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;				
			case 'E':
				settingsp->esic_en_rx = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'N':
				settingsp->nexa_en_rx = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'Y':
				settingsp->nexa_code_en = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'X':
				settingsp->nexa_sends = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'W':
				settingsp->waveman_sends = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'K':
				settingsp->kangthai_sends = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'R':
				settingsp->raw_en = linep[1] - '0';
				uart_puts(ACKSTRING);
				break;
			case 'S':
				saveEeprom(settingsp);
				uart_puts(ACKSTRING);
				break;
			case 'L':
				loadEeprom(settingsp);
				uart_puts(ACKSTRING);
				break;
			case 'F':
				loadDefaults(settingsp);
				uart_puts(ACKSTRING);
				break;
			case 'I':
				settingsp->noise_floor = readAd() + 15;
				uart_puts(ACKSTRING);
				break;
		}
	}
}

void parseCmd(char *linep, char line_len, settings_t *settingsp){
	switch(linep[1]){
		case 'G':
			if (line_len == 8) gaoTx(linep+2, settingsp->gao_sends);
			break;
		case 'W':
			if (line_len == 6) wavemanTx(linep+2, settingsp->waveman_sends);
			break;
		case 'N':
			if ((line_len == 12)||(line_len == 13)) nexaTx(linep+2, line_len-2, settingsp->nexa_sends);
			break;
		case 'K':
			if (line_len == 9) kangthaiTx(linep+2, settingsp->kangthai_sends);
			break;
		case 'P':
			uart_puts(STARTUPSTRING);
			break;
		case 'S':
			parseSettings(linep+2, line_len-2, settingsp);
			break;
		case 'X':
			RESET();
			break;
		case '!':
			enter_tx();
			TXPIN = 1;
			delayms(5000);
			enter_rx();
			break;
	}
}
