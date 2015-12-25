void nexaTx(char *s, char resends){
	#define NEXA_HIGH 204
	#define NEXA_LOWA 272
	#define NEXA_LOWB 1326
	#define NEXA_LOWC 2720
	#define NEXA_BURSTDELAY 10000
	unsigned long data = 0;
	unsigned char dimming;
	unsigned long temp;
	char bitnr;

	for (char j=0; j<6; j++){
		data |= asciiToHex(s[j]);
		data <<= 4;
	}
	data <<= 4; 
	data |= (s[6] - '0') << 6;  		  	 //Two bits of ID-code
	if (s[7] - '0') data |= 0b00100000;    //Group enable
	data |= asciiToHex(s[8]);			 //Channel
	if (s[9] == '1'){data |= 0b00010000;} // On/off
	if (s[9] == '2') dimming = asciiToHex(s[10]);  //Dim-level
	else dimming = 0;

	startTransmit();
	for (char resend = 0; resend < resends; resend++){
		TXPIN = 1;                                 //C-pulse
		waitTimer(NEXA_HIGH);
		TXPIN = 0;
		waitTimer(NEXA_LOWC);
		temp = data;
		for (bitnr = 0; bitnr < 32; bitnr++){
			TXPIN = 1;
			waitTimer(NEXA_HIGH);
			TXPIN = 0;
			if (dimming && bitnr == 27) waitTimer(NEXA_LOWA);
			else if(temp & 0b10000000000000000000000000000000) waitTimer(NEXA_LOWB);
			else waitTimer(NEXA_LOWA);
			TXPIN = 1;
			waitTimer(NEXA_HIGH);
			TXPIN = 0;
			if (dimming && bitnr == 27) waitTimer(NEXA_LOWA);
			else if((temp & 0b10000000000000000000000000000000) == 0) waitTimer(NEXA_LOWB);
			else waitTimer(NEXA_LOWA);
			temp <<= 1;
		}
		if (dimming != 0){
			temp = dimming;
			for (bitnr = 0; bitnr < 4; bitnr++){				
				TXPIN = 1;
				waitTimer(NEXA_HIGH);
				TXPIN = 0;
				if(temp & 0b1000) waitTimer(NEXA_LOWB);
				else waitTimer(NEXA_LOWA);
				TXPIN = 1;
				waitTimer(NEXA_HIGH);
				TXPIN = 0;
				if(temp & 0b1000) waitTimer(NEXA_LOWA);
				else waitTimer(NEXA_LOWB);			 	
				temp <<= 1;
			}
		}
		TXPIN = 1;                             //End-pulse + burst separation
		waitTimer(NEXA_HIGH);
		TXPIN = 0;
		waitTimer(NEXA_BURSTDELAY);
	}
	stopTransmit();
}

void nexaPrint(unsigned long data){  //$Niiiiiiigcp
	unsigned long number;
	sPuts("$N");
	for (char j = 0; j < 6; j++){
		number = data & 0xF0000000;
		data <<= 4;
		number >>= 28;
		sPutonehex(number);
	}
	number = data & 0xFF000000;
	number >>= 24;
	sPut('0' + ((number & 0b11000000) >> 6));
	if (number & 0b00100000) sPut('1');  // Group enable
	else sPut('0');
	sPutonehex(number & 0b00001111);
	if (number & 0b00010000) sPut('1');  // Power
	else sPut('0');	
	sPut(10);
	blinkRxLed();
}

void nexaDecode(char rf_state, char rf_pulse_length){
	#define LOW       0
	#define HIGH      1
	#define INVALID   2
	#define SKIP      4
	#define DIM       6
	#define PREAMBLE  0
	#define DATA      1
	static char symbols = 0;   // Four symbols form one bit
	static char nrsymbols = 0;
	static char nexabit;
	static unsigned long data = 0;
	static char nrbits = 0;

	// Find Nexa symbols and bits  //13, 18, 80
	nexabit = SKIP;
	if (rf_state){
		if ((rf_pulse_length > 5)&&(rf_pulse_length < 20)){
			symbols &= 0xFF ^ (1 << nrsymbols);
			nrsymbols++;
		}
		else{
			nrsymbols = 0;
			nexabit = INVALID;
		}
	}
	else{
		if((rf_pulse_length > 12)&&(rf_pulse_length < 23)){
			symbols &= 0xFF ^ (1 << nrsymbols);
			nrsymbols++;
		}
		else if((rf_pulse_length > 60)&&(rf_pulse_length < 100)){
			symbols |= 1 << nrsymbols;
			nrsymbols++;
		}
		else{
			nrsymbols = 0;
			nexabit = INVALID;
		}
	}
	if (nrsymbols >= 4){
		if (symbols == 0) nexabit = DIM;
		else if (symbols == 0b1000) nexabit = LOW;
		else if (symbols == 0b0010) nexabit = HIGH;
		else nexabit = INVALID;
		nrsymbols = 0;
	}

	// Decode Nexa
	if(nexabit == SKIP) return;
	if (nexabit == INVALID){
		if (nrbits >= 32) nexaPrint(data);
		nrbits = 0;
		return;
	}
	data <<= 1;
	data |= nexabit;
	nrbits++;
}
