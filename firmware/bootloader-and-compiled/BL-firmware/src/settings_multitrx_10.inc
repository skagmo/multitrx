		processor	18F26K20							;xxx

        #include "devices.inc"

		radix DEC
		
		#define		OSCF			32000000		;xxx oscillator frequency
		#define		BLINIT			6000			;xxx hello receive timeout [ms]
		#define		HELLOTRIES		2				;xxx number of non hello characters received before branching to the user application
		#define		BLTIME			2500			;xxx data receive timeout [ms]
	
		#define		USE_UART1		1				;xxx uncomment to use uart1
		#define		BAUDRATE	 	19200			;xxx baudrate

		#define		PROT_GOTO		1				;xxx protect goto at 0x00
		#define		PROT_BL 		1				;xxx protect bootloader
		
		ifdef IS_PIC18F
				#define		BLPLP		8			;bootloader placement, pages from end
				#define		BLSIZEP		8			;bootloader size [pages], used by bootloader protection	
		endif
		
	config FOSC = INTIO67
	config FCMEN = OFF
	config IESO = OFF
	config PWRT = OFF
	config BOREN = SBORDIS
	config BORV = 22
	config WDTEN = OFF
	config WDTPS = 32768
	config CCP2MX = PORTC
	config PBADEN = OFF
	config LPT1OSC = OFF
	config HFOFST = OFF
	config MCLRE = OFF
	config STVREN = ON
	config LVP = OFF
	config XINST = OFF
	config CP0 = ON
	config CP1 = ON
	config CP2 = ON
	config CP3 = ON
	config CPB = ON
	config CPD = ON
	config WRT0 = OFF
	config WRT1 = OFF
	config WRT2 = OFF
	config WRT3 = OFF
	config WRTB = OFF
	config WRTC = OFF
	config WRTD = OFF
	config EBTR0 = OFF
	config EBTR1 = OFF
	config EBTR2 = OFF
	config EBTR3 = OFF
	config EBTRB = OFF