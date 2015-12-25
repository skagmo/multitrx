// BatchPCB-revision, HWID 1.1

#define STARTUPSTRING "MultiTRX HWID 1.1, FWID 1.2 - skagmo.com"
#define ACKSTRING "$OK"
#define TRPIN LATB3
#define RXPIN (PORTB&0b100)
#define TXPIN LATB2
#define TXLED LATC4
#define RXLED LATC5
#define _XTAL_FREQ 32000000
#define BAUDRATE 9600

init(){
	TRISC = 0b10000000;
	TRISB = 0b00000110;
	TRISA = 0b00000000;
	
	//OSCCON  = 0b01100000;  // 8MHz for 26K20    //Settes i BL
	//OSCTUNE = 0b11000000;  // 4*PLL 		    //Settes i BL
	
	// Set up timers
	//T0CON = 0b11000110;   // Used for RF-decoding //Settes i BL, 16uS step
	//T3CON = 0b00110101;   // Used for RX-LED      //Settes i BL
	T1CON = 0b01111001;   //General purpose (eg. transmission), 1uS step
	
	WDTCON = 0;    //Settes i BL

	// AD-config
	ANSEL  = 0b00000000;
	ANSELH = 0b00000100;  // RB1 analog
	ADCON0 = 0b00101001;  // AD on, RB1 aka AN10 for RSSI
	ADCON1 = 0b00000000;
	ADCON2 = 0b10111110;  // Right justified, 20 TAD, FOSC/64
}

dataPinOut(){
	TRISB = 0b00000010;
}

dataPinIn(){
	TRISB = 0b00000110;
}