	clrf WDTCON
	
	movlw b'10000000'   
	movwf TRISC
	movlw b'00000110'   
	movwf TRISB
	movlw b'00000110'   
	movwf TRISA

	movlw b'01100000'
	movwf OSCCON
	movlw b'11000000'
	movwf OSCTUNE

	movlw b'11000110'
	movwf T0CON
	movlw b'00110101'
	movwf T3CON

	movlw b'00110000'   
	movwf LATC