void doroPrint(unsigned int data){
	sPuts("$D");
	unsigned int number;
	for (char j = 0; j < 3; j++){
		number = data & 0b0000111100000000;
		data <<= 4;
		number >>= 8;
		sPutonehex(number);
	}
	sPut(10);
	blinkRxLed();
}

void doroDecode(char rf_state, char rf_pulse_length){
	#define LOW       0
	#define HIGH      1
	#define INVALID   2
	#define SKIP_LOW  7
	#define SKIP_HIGH 8
	#define DORO_SHORT_LOWER 15  //18 og 36
	#define DORO_SHORT_UPPER 21
	#define DORO_LONG_LOWER  32
	#define DORO_LONG_UPPER  40
	static char dorobit;
	static unsigned int data = 0;
	static char nrbits = 0;

	// Find doro bits
	if(rf_state){
		if ((rf_pulse_length >= DORO_LONG_LOWER)&&
			(rf_pulse_length <= DORO_LONG_UPPER)&&
			((nrbits==0)||(dorobit==SKIP_LOW))) dorobit = HIGH;
		else if ((rf_pulse_length >= DORO_SHORT_LOWER)&&
				 (rf_pulse_length <= DORO_SHORT_UPPER)&&
			  	 ((nrbits==0)||(dorobit==SKIP_HIGH))) dorobit = LOW;
		else dorobit = INVALID;
	}
	else{
		if ((rf_pulse_length >= DORO_LONG_LOWER)&&
			(rf_pulse_length <= DORO_LONG_UPPER)) dorobit = SKIP_HIGH;
		else if ((rf_pulse_length >= DORO_SHORT_LOWER)&&
				 (rf_pulse_length <= DORO_SHORT_UPPER)) dorobit = SKIP_LOW;
		else dorobit = INVALID;
	}

	// Store Doro bits
	if ((dorobit == HIGH)||(dorobit == LOW)){
		data <<= 1;
		data |= dorobit;
		nrbits++;
	}
	else if (dorobit == INVALID){
		if (nrbits == 13) doroPrint(data);
		nrbits = 0;
	}
}