// BatchPCB-revision, HWID 1.0

#define STARTUPSTRING "MultiTRX HWID 1.0, FWID 1.2 - skagmo.com"
#define ACKSTRING "$OK"
#define TRPIN LATA0
#define RXPIN (PORTA&0b10)
#define TXPIN LATA1
#define TXLED LATC4
#define RXLED LATC5
#define _XTAL_FREQ 32000000
#define BAUDRATE 9600

init(){
	TRISC = 0b10000000;   //Settes i BL
	TRISB = 0b00000000;   //Settes i BL  
	TRISA = 0b00000110;   //Settes i BL
	
//	OSCCON  = 0b01100000;  // 8MHz for 26K20    //Settes i BL
//	OSCTUNE = 0b11000000;  // 4*PLL 		    //Settes i BL
	
	// Turn off all A/D
	ADCON0 = 0;  
	ANSEL  = 0;
	ANSELH = 0;
	
	// Set up timers
	//T0CON = 0b11000110;   // Used for RF-decoding //Settes i BL, 16uS step
	//T3CON = 0b00110101;   // Used for RX-LED      //Settes i BL
	T1CON = 0b01111001;   //General purpose (eg. transmission), 1uS step
	
	WDTCON = 0;    //Settes i BL

	// AD-config
	ANSEL  = 0b00000100;  // RA2 analog
	ANSELH = 0b00000000;
	ADCON0 = 0b00001001;  // AD on, RA2 aka AN2 for RSSI
	ADCON1 = 0b00000000;
	ADCON2 = 0b10111110;  // Right justified, 20 TAD, FOSC/64
}

dataPinOut(){
	TRISA  = 0b00000100;
}

dataPinIn(){
	TRISA  = 0b00000110;
}