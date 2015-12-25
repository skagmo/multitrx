void bmcConvertHex(char *datap, char *data_len){
	char temp;
	for (char k=0; k<(*data_len); k+=2){
		temp = asciiToHex(datap[k]) << 4;
		temp += asciiToHex(datap[k+1]);
		datap[k/2] = temp;
	}
	*data_len /= 2;
}


void bmcTxByte(char data){
	#define BMC_BITTIME 500
	for (char j=0; j<8; j++){
		if (data&0b10000000){
			TXPIN ^= 1;
			waitTimer(BMC_BITTIME);
			TXPIN ^= 1;
			waitTimer(BMC_BITTIME);
		}
		else{
			TXPIN ^= 1;
			waitTimer(BMC_BITTIME*2);
		}
		data <<= 1;
	}
}

void bmcTx(char *datap, char data_len, char hops, char sends){
	#define BMC_BURSTDELAY 3000
	#define BMC_PREAMBLE_BYTE 'S'

	char temp = (data_len&0b11111)|((hops&0b111)<<5);
	char checksum = temp;
	for (char k=0; k<data_len; k++) checksum += datap[k];

	startTransmit();
	for (char j=0; j<sends; j++){
		for (char k=0; k<2; k++) bmcTxByte(BMC_PREAMBLE_BYTE);
		bmcTxByte(temp);
		for (char k=0; k<data_len; k++) bmcTxByte(datap[k]);
		bmcTxByte(checksum);
		TXPIN ^= 1;
		waitTimer(BMC_BITTIME);	
		TXPIN = 0;
		if (j != (sends-1)) waitTimer(BMC_BURSTDELAY);
	}
	stopTransmit();
}

void bmcPrint(char *datap, char in_hex){
	char payload_size = datap[0]&0b11111;
	sPuts("$B");
	for(char j=1; j<(payload_size+1); j++){
		if(in_hex) sPuthex(datap[j]);
		else sPut(datap[j]);
	}
	sPut(10);
	blinkRxLed();
}

void bmcRepeat(char *datap, settings_t* settingsp){
	char payload_size = datap[0]&0b11111;
	char hops = datap[0]>>5;
	if (hops > 0){
		if (hops < 7) hops--;
		bmcTx(datap+1, payload_size, hops, settingsp->bmc_sends);
	}
}

void bmcDecode(char rf_pulse_length, settings_t* settingsp){
	#define LOW       0
	#define HIGH      1
	#define INVALID   2
	#define SKIP      4
	#define PREAMBLE  0
	#define DATA      1
	#define BMC_PREAMBLE_BYTE 'S'
	#define BMC_SHORT_LOWER   20
	#define BMC_SHORT_UPPER   40
	#define BMC_LONG_LOWER    50
	#define BMC_LONG_UPPER    70
	static char thebit;
	static char bits = 0;
	static char nrbits = 0;
	static char bytes[33];
	static char nrbytes = 0;
	static char state = PREAMBLE;

	// Find bits
	if((rf_pulse_length > BMC_SHORT_LOWER)&&(rf_pulse_length < BMC_SHORT_UPPER)){     //If short pulse
		if(thebit == SKIP) thebit = HIGH;  			//If short pulse at previous cycle
		else thebit = SKIP;
	}
	else if((rf_pulse_length > BMC_LONG_LOWER)&&(rf_pulse_length < BMC_LONG_UPPER)) thebit = LOW;     //If long pulse
	else thebit = INVALID;

	if(thebit == SKIP) return;
	if (thebit == INVALID){
		nrbits = 0;
		state = PREAMBLE;
		return;
	}
	bits <<= 1;
	bits |= thebit;
	nrbits++;
	switch(state){
		case PREAMBLE:
			if ((bits == BMC_PREAMBLE_BYTE)&&(nrbits >= 8)){
				nrbytes = nrbits = 0;
				state = DATA;
			}
			break;
		case DATA:
			if(nrbits == 8){
				if ((nrbytes != 0)||(bits != BMC_PREAMBLE_BYTE)){
					bytes[nrbytes++] = bits;
					if ((nrbytes >= 3)&&((nrbytes-2) == (bytes[0]&0b11111))){
						char checksum = 0;
						for (char j=0; j<(nrbytes-1); j++) checksum += bytes[j];
						if (checksum == bytes[nrbytes-1]){
							bmcPrint(&bytes, settingsp->bmc_en_hex);
							if(settingsp->bmc_repeat) bmcRepeat(&bytes, settingsp);
						}
						state = PREAMBLE;
					}
				}
				nrbits = 0;
			}
			break;
	}
}