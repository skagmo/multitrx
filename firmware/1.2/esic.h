void esicPrint(unsigned long data){
	unsigned long temp;
	char house;
	char channel;
	char constantcheck = 0;
	char humidity;
	signed long temperature;
	char lowbatt;
	char packetcount;
	char parity;
	char paritycalc = 0;

	parity = data & 0b11;

	temp = data;
	for (char counter = 0; counter < 15; counter++){
		temp = data & 0b11;
		paritycalc = paritycalc ^ temp;
		temp >>= 2;
	}

	temp = data & 0b00000011000000000000000000000000;
	temp >>= 24;

	if ((temp == 0b11)&&(paritycalc == parity)){
		temp = data & 0b11110000000000000000000000000000;
		house = temp >> 28;

		temp = data & 0b00001100000000000000000000000000;
		temp >>= 26;
		channel = temp + 1;

		temp = data & 0b00000000100000000000000000000000;
		lowbatt = temp >> 23;

		temp = data & 0b00000000011111111000000000000000;
		humidity = temp >> 15;

		temp = data & 0b00000000000000000111111111110000;
		temperature = temp >> 4;
		temperature = ((temperature-800)*10) / 16;

		temp = data & 0b00000000000000000000000000001100;
		temp >>= 2;
		packetcount = temp;

		sPuts("$E");
		sPutint(house); sPut(',');
		sPutint(channel); sPut(',');

		if(temperature < 0){
			sPut('-');
			temperature *= -1;
		}

		sPutint(temperature/10); sPut('.'); sPutint(temperature%10); sPut(',');
		sPutint(humidity/2); sPut(',');
		sPut(lowbatt + '0');
		sPut(10);
		blinkRxLed();
	}
}

void esicDecode(char rf_pulse_length){
	#define LOW       0
	#define HIGH      1
	#define INVALID   2
	#define SKIP      4
	#define PREAMBLE  0
	#define DATA      1
	#define SHORT_LOWER 40
	#define SHORT_UPPER 80
	#define LONG_LOWER 100
	#define LONG_UPPER 140
	static char esicbit;
	static unsigned long data = 0;
	static char nrbits = 0;
	static char preamble_data = 0;
	static char state = PREAMBLE;

	// Find Esic bits
	if((rf_pulse_length > SHORT_LOWER)&&(rf_pulse_length < SHORT_UPPER)){     //If short pulse
		if(esicbit == SKIP) esicbit = HIGH;  			//If short pulse at previous cycle
		else esicbit = SKIP;
	}
	else if((rf_pulse_length > LONG_LOWER)&&(rf_pulse_length < LONG_UPPER)&&
			!((esicbit == SKIP)&&(nrbits > 0))) esicbit = LOW;     //If long pulse
	else esicbit = INVALID;

	// Decode Esic
	if(esicbit != SKIP){
		switch (state){
			case PREAMBLE:
				if(esicbit != INVALID){
					preamble_data <<= 1;
					preamble_data |= esicbit;
					if ((preamble_data & 0b00001111) == 0b00001100) state = DATA;
				}
				else preamble_data = 0;
				break;
			case DATA:
				if (esicbit == INVALID){
					if (nrbits == 32) esicPrint(data);
					nrbits = 0;
					state = PREAMBLE;
				}
				else{
					data <<= 1;
					data |= esicbit;
					nrbits++;
				}
				break;
		}
	}
}