opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 11162"

opt pagewidth 120

	opt lm

	processor	18F26K20
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 19 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SSPMSK equ 0F77h ;# 
# 38 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SLRCON equ 0F78h ;# 
# 52 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CM2CON1 equ 0F79h ;# 
# 68 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CM2CON0 equ 0F7Ah ;# 
# 90 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CM1CON0 equ 0F7Bh ;# 
# 112 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
WPUB equ 0F7Ch ;# 
# 131 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
IOCB equ 0F7Dh ;# 
# 147 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ANSEL equ 0F7Eh ;# 
# 163 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ANSELH equ 0F7Fh ;# 
# 179 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PORTA equ 0F80h ;# 
# 252 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PORTB equ 0F81h ;# 
# 317 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PORTC equ 0F82h ;# 
# 373 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PORTE equ 0F84h ;# 
# 498 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
LATA equ 0F89h ;# 
# 551 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
LATB equ 0F8Ah ;# 
# 604 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
LATC equ 0F8Bh ;# 
# 657 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TRISA equ 0F92h ;# 
# 662 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
DDRA equ 0F92h ;# 
# 720 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TRISB equ 0F93h ;# 
# 725 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
DDRB equ 0F93h ;# 
# 783 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TRISC equ 0F94h ;# 
# 788 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
DDRC equ 0F94h ;# 
# 846 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
OSCTUNE equ 0F9Bh ;# 
# 868 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PIE1 equ 0F9Dh ;# 
# 894 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PIR1 equ 0F9Eh ;# 
# 920 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
IPR1 equ 0F9Fh ;# 
# 946 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PIE2 equ 0FA0h ;# 
# 973 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PIR2 equ 0FA1h ;# 
# 1000 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
IPR2 equ 0FA2h ;# 
# 1027 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
EECON1 equ 0FA6h ;# 
# 1050 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
EECON2 equ 0FA7h ;# 
# 1062 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
EEDATA equ 0FA8h ;# 
# 1074 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
EEADR equ 0FA9h ;# 
# 1093 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
EEADRH equ 0FAAh ;# 
# 1106 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
RCSTA equ 0FABh ;# 
# 1111 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
RCSTA1 equ 0FABh ;# 
# 1159 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TXSTA equ 0FACh ;# 
# 1164 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TXSTA1 equ 0FACh ;# 
# 1258 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TXREG equ 0FADh ;# 
# 1263 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TXREG1 equ 0FADh ;# 
# 1281 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
RCREG equ 0FAEh ;# 
# 1286 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
RCREG1 equ 0FAEh ;# 
# 1304 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SPBRG equ 0FAFh ;# 
# 1309 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SPBRG1 equ 0FAFh ;# 
# 1327 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SPBRGH equ 0FB0h ;# 
# 1339 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
T3CON equ 0FB1h ;# 
# 1380 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR3 equ 0FB2h ;# 
# 1392 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR3L equ 0FB2h ;# 
# 1404 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR3H equ 0FB3h ;# 
# 1416 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CVRCON2 equ 0FB4h ;# 
# 1430 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CVRCON equ 0FB5h ;# 
# 1456 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ECCP1AS equ 0FB6h ;# 
# 1480 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PWM1CON equ 0FB7h ;# 
# 1502 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
BAUDCON equ 0FB8h ;# 
# 1507 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
BAUDCTL equ 0FB8h ;# 
# 1563 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PSTRCON equ 0FB9h ;# 
# 1579 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCP2CON equ 0FBAh ;# 
# 1600 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCPR2 equ 0FBBh ;# 
# 1612 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCPR2L equ 0FBBh ;# 
# 1624 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCPR2H equ 0FBCh ;# 
# 1636 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCP1CON equ 0FBDh ;# 
# 1660 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCPR1 equ 0FBEh ;# 
# 1672 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCPR1L equ 0FBEh ;# 
# 1684 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
CCPR1H equ 0FBFh ;# 
# 1696 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ADCON2 equ 0FC0h ;# 
# 1719 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ADCON1 equ 0FC1h ;# 
# 1745 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ADCON0 equ 0FC2h ;# 
# 1799 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ADRES equ 0FC3h ;# 
# 1811 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ADRESL equ 0FC3h ;# 
# 1823 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
ADRESH equ 0FC4h ;# 
# 1835 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SSPCON2 equ 0FC5h ;# 
# 1854 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SSPCON1 equ 0FC6h ;# 
# 1876 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SSPSTAT equ 0FC7h ;# 
# 1962 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SSPADD equ 0FC8h ;# 
# 1974 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
SSPBUF equ 0FC9h ;# 
# 1986 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
T2CON equ 0FCAh ;# 
# 2009 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PR2 equ 0FCBh ;# 
# 2014 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
MEMCON equ 0FCBh ;# 
# 2032 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR2 equ 0FCCh ;# 
# 2044 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
T1CON equ 0FCDh ;# 
# 2081 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR1 equ 0FCEh ;# 
# 2093 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR1L equ 0FCEh ;# 
# 2105 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR1H equ 0FCFh ;# 
# 2117 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
RCON equ 0FD0h ;# 
# 2162 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
WDTCON equ 0FD1h ;# 
# 2177 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
HLVDCON equ 0FD2h ;# 
# 2182 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
LVDCON equ 0FD2h ;# 
# 2252 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
OSCCON equ 0FD3h ;# 
# 2276 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
T0CON equ 0FD5h ;# 
# 2298 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR0 equ 0FD6h ;# 
# 2310 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR0L equ 0FD6h ;# 
# 2322 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TMR0H equ 0FD7h ;# 
# 2334 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
STATUS equ 0FD8h ;# 
# 2365 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR2 equ 0FD9h ;# 
# 2377 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR2L equ 0FD9h ;# 
# 2389 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR2H equ 0FDAh ;# 
# 2401 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PLUSW2 equ 0FDBh ;# 
# 2413 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PREINC2 equ 0FDCh ;# 
# 2425 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
POSTDEC2 equ 0FDDh ;# 
# 2437 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
POSTINC2 equ 0FDEh ;# 
# 2449 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
INDF2 equ 0FDFh ;# 
# 2461 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
BSR equ 0FE0h ;# 
# 2473 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR1 equ 0FE1h ;# 
# 2485 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR1L equ 0FE1h ;# 
# 2497 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR1H equ 0FE2h ;# 
# 2509 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PLUSW1 equ 0FE3h ;# 
# 2521 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PREINC1 equ 0FE4h ;# 
# 2533 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
POSTDEC1 equ 0FE5h ;# 
# 2545 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
POSTINC1 equ 0FE6h ;# 
# 2557 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
INDF1 equ 0FE7h ;# 
# 2569 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
WREG equ 0FE8h ;# 
# 2592 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR0 equ 0FE9h ;# 
# 2604 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR0L equ 0FE9h ;# 
# 2616 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
FSR0H equ 0FEAh ;# 
# 2628 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PLUSW0 equ 0FEBh ;# 
# 2640 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PREINC0 equ 0FECh ;# 
# 2652 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
POSTDEC0 equ 0FEDh ;# 
# 2664 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
POSTINC0 equ 0FEEh ;# 
# 2676 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
INDF0 equ 0FEFh ;# 
# 2688 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
INTCON3 equ 0FF0h ;# 
# 2717 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
INTCON2 equ 0FF1h ;# 
# 2744 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
INTCON equ 0FF2h ;# 
# 2798 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PROD equ 0FF3h ;# 
# 2810 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PRODL equ 0FF3h ;# 
# 2822 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PRODH equ 0FF4h ;# 
# 2834 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TABLAT equ 0FF5h ;# 
# 2846 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TBLPTR equ 0FF6h ;# 
# 2859 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TBLPTRL equ 0FF6h ;# 
# 2871 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TBLPTRH equ 0FF7h ;# 
# 2883 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TBLPTRU equ 0FF8h ;# 
# 2896 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PCLAT equ 0FF9h ;# 
# 2901 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PC equ 0FF9h ;# 
# 2919 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PCL equ 0FF9h ;# 
# 2931 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PCLATH equ 0FFAh ;# 
# 2943 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
PCLATU equ 0FFBh ;# 
# 2955 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
STKPTR equ 0FFCh ;# 
# 2979 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TOS equ 0FFDh ;# 
# 2991 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TOSL equ 0FFDh ;# 
# 3003 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TOSH equ 0FFEh ;# 
# 3015 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f26k20.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_init
	FNCALL	_main,_startupBlinkLed
	FNCALL	_main,_pingResponse
	FNCALL	_main,_rfReceive
	FNCALL	_main,_sGet
	FNCALL	_main,_parseCmd
	FNCALL	_main,_sInWaiting
	FNCALL	_startupBlinkLed,_delayms
	FNCALL	_rfReceive,_printGao
	FNCALL	_rfReceive,_printNexa
	FNCALL	_rfReceive,_printDoro
	FNCALL	_rfReceive,_printEsic
	FNCALL	_printNexa,_sPuts
	FNCALL	_printNexa,_sPutonehex
	FNCALL	_printNexa,_sPut
	FNCALL	_printNexa,_blinkRxLed
	FNCALL	_printGao,_sPuts
	FNCALL	_printGao,_sPutonehex
	FNCALL	_printGao,_sPut
	FNCALL	_printGao,_blinkRxLed
	FNCALL	_printEsic,___lmul
	FNCALL	_printEsic,___aldiv
	FNCALL	_printEsic,_sPuts
	FNCALL	_printEsic,_sPutint
	FNCALL	_printEsic,_sPut
	FNCALL	_printEsic,___almod
	FNCALL	_printEsic,___awdiv
	FNCALL	_printEsic,_blinkRxLed
	FNCALL	_printDoro,_sPuts
	FNCALL	_printDoro,_sPutonehex
	FNCALL	_printDoro,_sPut
	FNCALL	_printDoro,_blinkRxLed
	FNCALL	_parseCmd,_asciiToHex
	FNCALL	_parseCmd,_startTransmit
	FNCALL	_parseCmd,_gaoTx
	FNCALL	_parseCmd,_stopTransmit
	FNCALL	_parseCmd,_reverse
	FNCALL	_parseCmd,_wavemanTx
	FNCALL	_parseCmd,_nexaTx
	FNCALL	_parseCmd,_pingResponse
	FNCALL	_parseCmd,_delayms
	FNCALL	_parseCmd,_kangthaiTx
	FNCALL	_startTransmit,_delayms
	FNCALL	_startTransmit,_dataPinOut
	FNCALL	_stopTransmit,_dataPinIn
	FNCALL	_stopTransmit,_delayms
	FNCALL	_stopTransmit,_sPuts
	FNCALL	_stopTransmit,_sPut
	FNCALL	_pingResponse,_sPuts
	FNCALL	_pingResponse,_sPut
	FNCALL	_gaoTx,_delaynop
	FNCALL	_gaoTx,_delayms
	FNCALL	_wavemanTx,_delaynop
	FNCALL	_nexaTx,_delaynop
	FNCALL	_kangthaiTx,_delaynop
	FNCALL	_kangthaiTx,_delayms
	FNROOT	_main
	FNCALL	intlevel2,_intRoutineHigh
	global	intlevel2
	FNROOT	intlevel2
	global	_esic_data
	global	_doro_data
	global	_doro_nrbits
	global	_dorobit
	global	_esic_nrbits
	global	_esic_preamble_data
	global	_esic_previous_short
	global	_esic_state
	global	_esicbit
	global	_gao_nrbits
	global	_gao_nrsymbols
	global	_gao_preamble_data
	global	_gao_state
	global	_gao_symbols
	global	_gaobit
	global	_nexa_nrbits
	global	_nexa_nrsymbols
	global	_nexa_symbols
	global	_nexabit
	global	_rxip
	global	_txip
	global	_txop
	global	_rxbuffer
	global	_txbuffer
	global	_gao_data
	global	_nexa_data
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ANSEL
_ANSEL	set	0xF7E
	global	_ANSELH
_ANSELH	set	0xF7F
	global	_INTCON
_INTCON	set	0xFF2
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_PIE1
_PIE1	set	0xF9D
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR3H
_TMR3H	set	0xFB3
	global	_TMR3L
_TMR3L	set	0xFB2
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_CREN
_CREN	set	0x7D5C
	global	_LATA0
_LATA0	set	0x7C48
	global	_LATA1
_LATA1	set	0x7C49
	global	_LATC4
_LATC4	set	0x7C5C
	global	_LATC5
_LATC5	set	0x7C5D
	global	_RA1
_RA1	set	0x7C01
	global	_RCIF
_RCIF	set	0x7CF5
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR3IF
_TMR3IF	set	0x7D09
	global	_TMR3ON
_TMR3ON	set	0x7D88
	global	_TXIE
_TXIE	set	0x7CEC
	global	_TXIF
_TXIF	set	0x7CF4
psect	smallconst,class=SMALLCONST,space=0,reloc=2
global __psmallconst
__psmallconst:
	
STR_2:
	db	77	;'M'
	db	117	;'u'
	db	108	;'l'
	db	116	;'t'
	db	105	;'i'
	db	84	;'T'
	db	82	;'R'
	db	88	;'X'
	db	32
	db	72	;'H'
	db	87	;'W'
	db	73	;'I'
	db	68	;'D'
	db	32
	db	49	;'1'
	db	46
	db	48	;'0'
	db	44
	db	32
	db	70	;'F'
	db	87	;'W'
	db	73	;'I'
	db	68	;'D'
	db	32
	db	49	;'1'
	db	46
	db	49	;'1'
	db	32
	db	45
	db	32
	db	115	;'s'
	db	107	;'k'
	db	97	;'a'
	db	103	;'g'
	db	109	;'m'
	db	111	;'o'
	db	46
	db	99	;'c'
	db	111	;'o'
	db	109	;'m'
	db	0
	
STR_1:
	db	36
	db	79	;'O'
	db	75	;'K'
	db	0
	
STR_6:
	db	36
	db	68	;'D'
	db	0
	
STR_5:
	db	36
	db	69	;'E'
	db	0
	
STR_4:
	db	36
	db	71	;'G'
	db	0
	
STR_3:
	db	36
	db	78	;'N'
	db	0
; #config settings
	file	"multitrx2620.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

psect	bssCOMRAM,class=COMRAM,space=1
global __pbssCOMRAM
__pbssCOMRAM:
	global	_esic_data
_esic_data:
       ds      4
	global	_doro_data
_doro_data:
       ds      2
	global	_doro_nrbits
_doro_nrbits:
       ds      1
	global	_dorobit
_dorobit:
       ds      1
	global	_esic_nrbits
_esic_nrbits:
       ds      1
	global	_esic_preamble_data
_esic_preamble_data:
       ds      1
	global	_esic_previous_short
_esic_previous_short:
       ds      1
	global	_esic_state
_esic_state:
       ds      1
	global	_esicbit
_esicbit:
       ds      1
	global	_gao_nrbits
_gao_nrbits:
       ds      1
	global	_gao_nrsymbols
_gao_nrsymbols:
       ds      1
	global	_gao_preamble_data
_gao_preamble_data:
       ds      1
	global	_gao_state
_gao_state:
       ds      1
	global	_gao_symbols
_gao_symbols:
       ds      1
	global	_gaobit
_gaobit:
       ds      1
	global	_nexa_nrbits
_nexa_nrbits:
       ds      1
	global	_nexa_nrsymbols
_nexa_nrsymbols:
       ds      1
	global	_nexa_symbols
_nexa_symbols:
       ds      1
	global	_nexabit
_nexabit:
       ds      1
psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
	global	_gao_data
_gao_data:
       ds      4
	global	_nexa_data
_nexa_data:
       ds      4
psect	cinit
; Clear objects allocated to BANK0 (8 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	8
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (23 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	23
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	printEsic@constantcheck
printEsic@constantcheck:	; 1 bytes @ 0x0
	ds   1
	global	printEsic@packetcount
printEsic@packetcount:	; 1 bytes @ 0x1
	ds   1
	global	printEsic@house
printEsic@house:	; 1 bytes @ 0x2
	ds   1
	global	printEsic@channel
printEsic@channel:	; 1 bytes @ 0x3
	ds   1
	global	printEsic@humidity
printEsic@humidity:	; 1 bytes @ 0x4
	ds   1
	global	printEsic@lowbatt
printEsic@lowbatt:	; 1 bytes @ 0x5
	ds   1
	global	printEsic@parity
printEsic@parity:	; 1 bytes @ 0x6
	ds   1
	global	printEsic@paritycalc
printEsic@paritycalc:	; 1 bytes @ 0x7
	ds   1
	global	printEsic@counter
printEsic@counter:	; 1 bytes @ 0x8
	ds   1
	global	printEsic@temperature
printEsic@temperature:	; 4 bytes @ 0x9
	ds   4
	global	printEsic@temp
printEsic@temp:	; 4 bytes @ 0xD
	ds   4
	global	main@linebuffer
main@linebuffer:	; 32 bytes @ 0x11
	ds   32
	global	main@linebufferp
main@linebufferp:	; 2 bytes @ 0x31
	ds   2
	global	main@rf_pulse_length
main@rf_pulse_length:	; 2 bytes @ 0x33
	ds   2
	global	main@linep
main@linep:	; 1 bytes @ 0x35
	ds   1
	global	main@rf_state
main@rf_state:	; 1 bytes @ 0x36
	ds   1
	global	main@prev_rf_state
main@prev_rf_state:	; 1 bytes @ 0x37
	ds   1
	global	main@c_temp
main@c_temp:	; 1 bytes @ 0x38
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
	global	?_intRoutineHigh
?_intRoutineHigh:	; 0 bytes @ 0x0
	global	??_intRoutineHigh
??_intRoutineHigh:	; 0 bytes @ 0x0
	global	?_startTransmit
?_startTransmit:	; 0 bytes @ 0x0
	global	?_stopTransmit
?_stopTransmit:	; 0 bytes @ 0x0
	global	?_startupBlinkLed
?_startupBlinkLed:	; 0 bytes @ 0x0
	global	?_blinkRxLed
?_blinkRxLed:	; 0 bytes @ 0x0
	global	?_pingResponse
?_pingResponse:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_sGet
?_sGet:	; 1 bytes @ 0x0
	global	?_sInWaiting
?_sInWaiting:	; 1 bytes @ 0x0
	global	?_init
?_init:	; 2 bytes @ 0x0
	global	?_dataPinOut
?_dataPinOut:	; 2 bytes @ 0x0
	global	?_dataPinIn
?_dataPinIn:	; 2 bytes @ 0x0
	ds   14
	global	?_sPuts
?_sPuts:	; 0 bytes @ 0xE
	global	?_sPut
?_sPut:	; 0 bytes @ 0xE
	global	?_sPutonehex
?_sPutonehex:	; 0 bytes @ 0xE
	global	?_sPutint
?_sPutint:	; 0 bytes @ 0xE
	global	??_sGet
??_sGet:	; 0 bytes @ 0xE
	global	??_sInWaiting
??_sInWaiting:	; 0 bytes @ 0xE
	global	??_init
??_init:	; 0 bytes @ 0xE
	global	??_dataPinOut
??_dataPinOut:	; 0 bytes @ 0xE
	global	??_dataPinIn
??_dataPinIn:	; 0 bytes @ 0xE
	global	?_delayms
?_delayms:	; 0 bytes @ 0xE
	global	?_delaynop
?_delaynop:	; 0 bytes @ 0xE
	global	??_blinkRxLed
??_blinkRxLed:	; 0 bytes @ 0xE
	global	?_asciiToHex
?_asciiToHex:	; 1 bytes @ 0xE
	global	?_reverse
?_reverse:	; 1 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___almod
?___almod:	; 4 bytes @ 0xE
	global	?___lmul
?___lmul:	; 4 bytes @ 0xE
	global	_sPut$0
_sPut$0:	; 1 bytes @ 0xE
	global	_sPutonehex$0
_sPutonehex$0:	; 1 bytes @ 0xE
	global	asciiToHex@ascii
asciiToHex@ascii:	; 1 bytes @ 0xE
	global	reverse@input
reverse@input:	; 1 bytes @ 0xE
	global	_sPuts$0
_sPuts$0:	; 2 bytes @ 0xE
	global	_sPutint$0
_sPutint$0:	; 2 bytes @ 0xE
	global	delayms@ms
delayms@ms:	; 2 bytes @ 0xE
	global	delaynop@cyc
delaynop@cyc:	; 2 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0xE
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0xE
	ds   1
	global	??_sPut
??_sPut:	; 0 bytes @ 0xF
	global	??_sPutonehex
??_sPutonehex:	; 0 bytes @ 0xF
	global	??_asciiToHex
??_asciiToHex:	; 0 bytes @ 0xF
	global	??_reverse
??_reverse:	; 0 bytes @ 0xF
	ds   1
	global	??_sPutint
??_sPutint:	; 0 bytes @ 0x10
	global	??_delayms
??_delayms:	; 0 bytes @ 0x10
	global	??_delaynop
??_delaynop:	; 0 bytes @ 0x10
	global	reverse@output
reverse@output:	; 1 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	ds   1
	global	??_sPuts
??_sPuts:	; 0 bytes @ 0x11
	global	??_pingResponse
??_pingResponse:	; 0 bytes @ 0x11
	global	?_printNexa
?_printNexa:	; 0 bytes @ 0x11
	global	?_printGao
?_printGao:	; 0 bytes @ 0x11
	global	?_printDoro
?_printDoro:	; 0 bytes @ 0x11
	global	delayms@counter
delayms@counter:	; 2 bytes @ 0x11
	global	delaynop@counter
delaynop@counter:	; 2 bytes @ 0x11
	global	printDoro@data
printDoro@data:	; 2 bytes @ 0x11
	global	printNexa@data
printNexa@data:	; 4 bytes @ 0x11
	global	printGao@data
printGao@data:	; 4 bytes @ 0x11
	ds   1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x12
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x12
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x12
	ds   1
	global	??_startTransmit
??_startTransmit:	; 0 bytes @ 0x13
	global	??_stopTransmit
??_stopTransmit:	; 0 bytes @ 0x13
	global	??_startupBlinkLed
??_startupBlinkLed:	; 0 bytes @ 0x13
	global	??_printDoro
??_printDoro:	; 0 bytes @ 0x13
	global	?_gaoTx
?_gaoTx:	; 0 bytes @ 0x13
	global	?_wavemanTx
?_wavemanTx:	; 0 bytes @ 0x13
	global	?_nexaTx
?_nexaTx:	; 0 bytes @ 0x13
	global	?_kangthaiTx
?_kangthaiTx:	; 0 bytes @ 0x13
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x13
	global	wavemanTx@data
wavemanTx@data:	; 2 bytes @ 0x13
	global	gaoTx@data
gaoTx@data:	; 4 bytes @ 0x13
	global	nexaTx@data
nexaTx@data:	; 4 bytes @ 0x13
	global	kangthaiTx@data
kangthaiTx@data:	; 4 bytes @ 0x13
	ds   1
	global	startupBlinkLed@j
startupBlinkLed@j:	; 1 bytes @ 0x14
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x14
	global	printDoro@number
printDoro@number:	; 2 bytes @ 0x14
	ds   1
	global	??_printNexa
??_printNexa:	; 0 bytes @ 0x15
	global	??_printGao
??_printGao:	; 0 bytes @ 0x15
	global	wavemanTx@resends
wavemanTx@resends:	; 1 bytes @ 0x15
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x15
	ds   1
	global	??_wavemanTx
??_wavemanTx:	; 0 bytes @ 0x16
	global	??___almod
??___almod:	; 0 bytes @ 0x16
	global	??___lmul
??___lmul:	; 0 bytes @ 0x16
	global	printDoro@j
printDoro@j:	; 1 bytes @ 0x16
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x16
	ds   1
	global	gaoTx@resends
gaoTx@resends:	; 1 bytes @ 0x17
	global	nexaTx@dimming
nexaTx@dimming:	; 1 bytes @ 0x17
	global	kangthaiTx@resends
kangthaiTx@resends:	; 1 bytes @ 0x17
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x17
	global	wavemanTx@tempdata
wavemanTx@tempdata:	; 2 bytes @ 0x17
	ds   1
	global	??_gaoTx
??_gaoTx:	; 0 bytes @ 0x18
	global	??_kangthaiTx
??_kangthaiTx:	; 0 bytes @ 0x18
	global	nexaTx@resends
nexaTx@resends:	; 1 bytes @ 0x18
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x18
	ds   1
	global	??_nexaTx
??_nexaTx:	; 0 bytes @ 0x19
	global	printNexa@j
printNexa@j:	; 1 bytes @ 0x19
	global	gaoTx@resend
gaoTx@resend:	; 1 bytes @ 0x19
	global	wavemanTx@resend
wavemanTx@resend:	; 1 bytes @ 0x19
	global	kangthaiTx@resend
kangthaiTx@resend:	; 1 bytes @ 0x19
	global	printGao@number
printGao@number:	; 4 bytes @ 0x19
	ds   1
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x1A
	global	wavemanTx@bitnr
wavemanTx@bitnr:	; 1 bytes @ 0x1A
	global	nexaTx@resend
nexaTx@resend:	; 1 bytes @ 0x1A
	global	printNexa@number
printNexa@number:	; 4 bytes @ 0x1A
	global	gaoTx@temp
gaoTx@temp:	; 4 bytes @ 0x1A
	global	kangthaiTx@temp
kangthaiTx@temp:	; 4 bytes @ 0x1A
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x1A
	ds   1
	global	nexaTx@temp
nexaTx@temp:	; 4 bytes @ 0x1B
	ds   2
	global	printGao@j
printGao@j:	; 1 bytes @ 0x1D
	ds   1
	global	gaoTx@preamble
gaoTx@preamble:	; 1 bytes @ 0x1E
	global	kangthaiTx@bitnr
kangthaiTx@bitnr:	; 1 bytes @ 0x1E
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x1E
	ds   1
	global	gaoTx@bitnr
gaoTx@bitnr:	; 1 bytes @ 0x1F
	global	nexaTx@bitnr
nexaTx@bitnr:	; 1 bytes @ 0x1F
	ds   1
	global	?_parseCmd
?_parseCmd:	; 0 bytes @ 0x20
	global	parseCmd@s
parseCmd@s:	; 2 bytes @ 0x20
	ds   2
	global	??_parseCmd
??_parseCmd:	; 0 bytes @ 0x22
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x22
	ds   1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x23
	ds   1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x24
	ds   1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x25
	ds   3
	global	parseCmd@nexa_dimming
parseCmd@nexa_dimming:	; 1 bytes @ 0x28
	ds   1
	global	?_printEsic
?_printEsic:	; 0 bytes @ 0x29
	global	parseCmd@tx_data_int
parseCmd@tx_data_int:	; 2 bytes @ 0x29
	global	printEsic@data
printEsic@data:	; 4 bytes @ 0x29
	ds   2
	global	parseCmd@temp
parseCmd@temp:	; 1 bytes @ 0x2B
	ds   1
	global	parseCmd@j
parseCmd@j:	; 1 bytes @ 0x2C
	ds   1
	global	??_printEsic
??_printEsic:	; 0 bytes @ 0x2D
	global	parseCmd@j_284
parseCmd@j_284:	; 1 bytes @ 0x2D
	ds   1
	global	parseCmd@j_285
parseCmd@j_285:	; 1 bytes @ 0x2E
	ds   1
	global	parseCmd@j_286
parseCmd@j_286:	; 1 bytes @ 0x2F
	ds   1
	global	parseCmd@tx_data
parseCmd@tx_data:	; 4 bytes @ 0x30
	ds   1
	global	?_rfReceive
?_rfReceive:	; 0 bytes @ 0x31
	global	rfReceive@rf_state
rfReceive@rf_state:	; 1 bytes @ 0x31
	ds   1
	global	rfReceive@rf_pulse_length
rfReceive@rf_pulse_length:	; 1 bytes @ 0x32
	ds   1
	global	??_rfReceive
??_rfReceive:	; 0 bytes @ 0x33
	ds   2
	global	??_main
??_main:	; 0 bytes @ 0x35
	ds   1
;!
;!Data Sizes:
;!    Strings     57
;!    Constant    0
;!    Data        0
;!    BSS         34
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     54      77
;!    BANK0           160     57      65
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15           96      0       0

;!
;!Pointer List with Targets:
;!
;!    ?___awdiv	int  size(2) Largest target is 0
;!
;!    ?___almod	long  size(2) Largest target is 0
;!
;!    ?___aldiv	long  size(2) Largest target is 0
;!
;!    ?___lmul	unsigned long  size(2) Largest target is 0
;!
;!    sPuts$0	PTR unsigned char  size(2) Largest target is 41
;!		 -> STR_6(CODE[3]), STR_5(CODE[3]), STR_4(CODE[3]), STR_3(CODE[3]), 
;!		 -> STR_2(CODE[41]), STR_1(CODE[4]), 
;!
;!    main@linebufferp	PTR unsigned char  size(2) Largest target is 32
;!		 -> main@linebuffer(BANK0[32]), 
;!
;!    parseCmd@s	PTR unsigned char  size(2) Largest target is 32
;!		 -> main@linebuffer(BANK0[32]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_rfReceive
;!    _startupBlinkLed->_delayms
;!    _rfReceive->_printEsic
;!    _printNexa->_sPuts
;!    _printGao->_sPuts
;!    _printEsic->___aldiv
;!    _printDoro->_sPuts
;!    _parseCmd->_gaoTx
;!    _parseCmd->_nexaTx
;!    _startTransmit->_delayms
;!    _stopTransmit->_delayms
;!    _pingResponse->_sPuts
;!    _gaoTx->_delaynop
;!    _gaoTx->_delayms
;!    _wavemanTx->_delaynop
;!    _nexaTx->_delaynop
;!    _kangthaiTx->_delaynop
;!    _kangthaiTx->_delayms
;!    ___aldiv->___lmul
;!
;!Critical Paths under _intRoutineHigh in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _rfReceive->_printEsic
;!
;!Critical Paths under _intRoutineHigh in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _intRoutineHigh in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                41    41      0    6974
;!                                             53 COMRAM     1     1      0
;!                                             17 BANK0     40    40      0
;!                               _init
;!                    _startupBlinkLed
;!                       _pingResponse
;!                          _rfReceive
;!                               _sGet
;!                           _parseCmd
;!                         _sInWaiting
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _startupBlinkLed                                      2     2      0      92
;!                                             19 COMRAM     2     2      0
;!                            _delayms
;! ---------------------------------------------------------------------------------
;! (1) _rfReceive                                            4     2      2    3947
;!                                             49 COMRAM     4     2      2
;!                           _printGao
;!                          _printNexa
;!                          _printDoro
;!                          _printEsic
;! ---------------------------------------------------------------------------------
;! (2) _printNexa                                           13     9      4     300
;!                                             17 COMRAM    13     9      4
;!                              _sPuts
;!                         _sPutonehex
;!                               _sPut
;!                         _blinkRxLed
;! ---------------------------------------------------------------------------------
;! (2) _printGao                                            13     9      4     201
;!                                             17 COMRAM    13     9      4
;!                              _sPuts
;!                         _sPutonehex
;!                               _sPut
;!                         _blinkRxLed
;! ---------------------------------------------------------------------------------
;! (2) _printEsic                                           25    21      4    2532
;!                                             41 COMRAM     8     4      4
;!                                              0 BANK0     17    17      0
;!                             ___lmul
;!                            ___aldiv
;!                              _sPuts
;!                            _sPutint
;!                               _sPut
;!                            ___almod
;!                            ___awdiv
;!                         _blinkRxLed
;! ---------------------------------------------------------------------------------
;! (3) _sPutint                                              2     0      2       0
;!                                             14 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _printDoro                                            6     4      2     139
;!                                             17 COMRAM     6     4      2
;!                              _sPuts
;!                         _sPutonehex
;!                               _sPut
;!                         _blinkRxLed
;! ---------------------------------------------------------------------------------
;! (3) _blinkRxLed                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _sPutonehex                                           1     0      1       0
;!                                             14 COMRAM     1     0      1
;! ---------------------------------------------------------------------------------
;! (1) _parseCmd                                            20    18      2    2449
;!                                             32 COMRAM    20    18      2
;!                         _asciiToHex
;!                      _startTransmit
;!                              _gaoTx
;!                       _stopTransmit
;!                            _reverse
;!                          _wavemanTx
;!                             _nexaTx
;!                       _pingResponse
;!                            _delayms
;!                         _kangthaiTx
;! ---------------------------------------------------------------------------------
;! (2) _asciiToHex                                           1     0      1      46
;!                                             14 COMRAM     1     0      1
;! ---------------------------------------------------------------------------------
;! (2) _reverse                                              3     2      1     115
;!                                             14 COMRAM     3     2      1
;! ---------------------------------------------------------------------------------
;! (2) _startTransmit                                        0     0      0      46
;!                            _delayms
;!                         _dataPinOut
;! ---------------------------------------------------------------------------------
;! (3) _dataPinOut                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _stopTransmit                                         1     1      0      46
;!                                             19 COMRAM     1     1      0
;!                          _dataPinIn
;!                            _delayms
;!                              _sPuts
;!                               _sPut
;! ---------------------------------------------------------------------------------
;! (3) _dataPinIn                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pingResponse                                         1     1      0       0
;!                                             17 COMRAM     1     1      0
;!                              _sPuts
;!                               _sPut
;! ---------------------------------------------------------------------------------
;! (3) _sPuts                                                3     0      3       0
;!                                             14 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _sPut                                                 1     0      1       0
;!                                             14 COMRAM     1     0      1
;! ---------------------------------------------------------------------------------
;! (2) _gaoTx                                               13     8      5     298
;!                                             19 COMRAM    13     8      5
;!                           _delaynop
;!                            _delayms
;! ---------------------------------------------------------------------------------
;! (2) _wavemanTx                                            8     5      3     184
;!                                             19 COMRAM     8     5      3
;!                           _delaynop
;! ---------------------------------------------------------------------------------
;! (2) _nexaTx                                              13     7      6     430
;!                                             19 COMRAM    13     7      6
;!                           _delaynop
;! ---------------------------------------------------------------------------------
;! (2) _kangthaiTx                                          12     7      5     252
;!                                             19 COMRAM    12     7      5
;!                           _delaynop
;!                            _delayms
;! ---------------------------------------------------------------------------------
;! (3) _delayms                                              5     3      2      46
;!                                             14 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (3) _delaynop                                             5     3      2      46
;!                                             14 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _sGet                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _sInWaiting                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) ___aldiv                                             15     7      8     445
;!                                             26 COMRAM    15     7      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___almod                                             11     3      8     433
;!                                             14 COMRAM    11     3      8
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     445
;!                                             14 COMRAM     9     5      4
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     136
;!                                             14 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _intRoutineHigh                                      14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init
;!   _startupBlinkLed
;!     _delayms
;!   _pingResponse
;!     _sPuts
;!     _sPut
;!   _rfReceive
;!     _printGao
;!       _sPuts
;!       _sPutonehex
;!       _sPut
;!       _blinkRxLed
;!     _printNexa
;!       _sPuts
;!       _sPutonehex
;!       _sPut
;!       _blinkRxLed
;!     _printDoro
;!       _sPuts
;!       _sPutonehex
;!       _sPut
;!       _blinkRxLed
;!     _printEsic
;!       ___lmul
;!       ___aldiv
;!         ___lmul (ARG)
;!       _sPuts
;!       _sPutint
;!       _sPut
;!       ___almod
;!       ___awdiv
;!       _blinkRxLed
;!   _sGet
;!   _parseCmd
;!     _asciiToHex
;!     _startTransmit
;!       _delayms
;!       _dataPinOut
;!     _gaoTx
;!       _delaynop
;!       _delayms
;!     _stopTransmit
;!       _dataPinIn
;!       _delayms
;!       _sPuts
;!       _sPut
;!     _reverse
;!     _wavemanTx
;!       _delaynop
;!     _nexaTx
;!       _delaynop
;!     _pingResponse
;!       _sPuts
;!       _sPut
;!     _delayms
;!     _kangthaiTx
;!       _delaynop
;!       _delayms
;!   _sInWaiting
;!
;! _intRoutineHigh (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             F5F      0       0      37        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK14          100      0       0      33        0.0%
;!BANK14             100      0       0      34        0.0%
;!BITBANK13          100      0       0      30        0.0%
;!BANK13             100      0       0      31        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     39      41       5       40.6%
;!BITBANK15           60      0       0      35        0.0%
;!BANK15              60      0       0      36        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     36      4D       1       81.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       3       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      8E      32        0.0%
;!DATA                 0      0      91       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 153 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  linebuffer     32   17[BANK0 ] unsigned char [32]
;;  rf_pulse_len    2   51[BANK0 ] unsigned int 
;;  linebufferp     2   49[BANK0 ] PTR unsigned char 
;;		 -> main@linebuffer(32), 
;;  c_temp          1   56[BANK0 ] unsigned char 
;;  prev_rf_stat    1   55[BANK0 ] unsigned char 
;;  rf_state        1   54[BANK0 ] unsigned char 
;;  linep           1   53[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      40       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1      40       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       41 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_init
;;		_startupBlinkLed
;;		_pingResponse
;;		_rfReceive
;;		_sGet
;;		_parseCmd
;;		_sInWaiting
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
psect	text0
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	153
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
	opt	stack 27
	line	154
	
l4686:
;batchpcb26k20.c: 154: init();
	call	_init	;wreg free
	line	155
	
l4688:
;batchpcb26k20.c: 155: LATA0 = 0;
	bcf	c:(31816/8),(31816)&7	;volatile
	line	156
	
l4690:
;batchpcb26k20.c: 156: startupBlinkLed();
	call	_startupBlinkLed	;wreg free
	line	157
	
l4692:
;batchpcb26k20.c: 157: pingResponse();
	call	_pingResponse	;wreg free
	line	159
	
l4694:
;batchpcb26k20.c: 159: char rf_state = 0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@rf_state))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	160
	
l4696:
;batchpcb26k20.c: 160: char prev_rf_state = 0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@prev_rf_state))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	161
	
l4698:
;batchpcb26k20.c: 161: unsigned int rf_pulse_length = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@rf_pulse_length+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((main@rf_pulse_length))&0ffh
	line	167
	
l4700:
;batchpcb26k20.c: 166: char linebuffer[32];
;batchpcb26k20.c: 167: char *linebufferp = &linebuffer;
	movlb	0	; () banked
	movlw	high(main@linebuffer)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@linebufferp+1))&0ffh
	movlb	0	; () banked
	movlw	low(main@linebuffer)
	movlb	0	; () banked
	movwf	((main@linebufferp))&0ffh
	line	168
	
l4702:
;batchpcb26k20.c: 168: char linep = 0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@linep))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	171
	
l4704:
;batchpcb26k20.c: 169: char c_temp;
;batchpcb26k20.c: 171: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	goto	l4706
	line	173
;batchpcb26k20.c: 173: while(1){
	
l386:
	line	175
	
l4706:
;batchpcb26k20.c: 175: rf_state = RA1;
	movlw	0
	btfsc	c:(31745/8),(31745)&7	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@rf_state))&0ffh
	line	176
	
l4708:
;batchpcb26k20.c: 176: if (prev_rf_state != rf_state){
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@prev_rf_state))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((main@rf_state))&0ffh,w
	btfsc	status,2
	goto	u6181
	goto	u6180
u6181:
	goto	l4718
u6180:
	line	177
	
l4710:
;batchpcb26k20.c: 177: rf_pulse_length = TMR0L;
	movlb	0	; () banked
	movff	(c:4054),(main@rf_pulse_length)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	((main@rf_pulse_length+1))&0ffh
	line	178
;batchpcb26k20.c: 178: if(TMR0IF){
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	u6191
	goto	u6190
u6191:
	goto	l388
u6190:
	line	179
	
l4712:
;batchpcb26k20.c: 179: rf_pulse_length = 0xFF;
	movlw	high(0FFh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@rf_pulse_length+1))&0ffh
	movlw	low(0FFh)
	movlb	0	; () banked
	movwf	((main@rf_pulse_length))&0ffh
	line	180
	
l4714:
;batchpcb26k20.c: 180: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	181
	
l388:
	line	182
;batchpcb26k20.c: 181: }
;batchpcb26k20.c: 182: TMR0L = 0;
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	183
	
l4716:
;batchpcb26k20.c: 183: rfReceive(prev_rf_state, rf_pulse_length);
	movff	(main@prev_rf_state),(c:?_rfReceive)
	movff	(main@rf_pulse_length),0+((c:?_rfReceive)+01h)
	call	_rfReceive	;wreg free
	goto	l4718
	line	184
	
l387:
	line	185
	
l4718:
;batchpcb26k20.c: 184: }
;batchpcb26k20.c: 185: prev_rf_state = rf_state;
	movff	(main@rf_state),(main@prev_rf_state)
	line	188
	
l4720:
;batchpcb26k20.c: 188: if(TMR3IF){
	btfss	c:(32009/8),(32009)&7	;volatile
	goto	u6201
	goto	u6200
u6201:
	goto	l4738
u6200:
	line	189
	
l4722:
;batchpcb26k20.c: 189: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	190
;batchpcb26k20.c: 190: TMR3ON = 0;
	bcf	c:(32136/8),(32136)&7	;volatile
	line	191
;batchpcb26k20.c: 191: TMR3IF = 0;
	bcf	c:(32009/8),(32009)&7	;volatile
	goto	l4738
	line	192
	
l389:
	line	195
;batchpcb26k20.c: 192: }
;batchpcb26k20.c: 195: while(sInWaiting()){
	goto	l4738
	
l391:
	line	196
	
l4724:
;batchpcb26k20.c: 196: c_temp = sGet();
	call	_sGet	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@c_temp))&0ffh
	line	197
	
l4726:
;batchpcb26k20.c: 197: if((c_temp == 10) || (c_temp == 13)){
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@c_temp))&0ffh,w
	xorlw	10

	btfsc	status,2
	goto	u6211
	goto	u6210
u6211:
	goto	l4730
u6210:
	
l4728:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@c_temp))&0ffh,w
	xorlw	13

	btfss	status,2
	goto	u6221
	goto	u6220
u6221:
	goto	l4734
u6220:
	goto	l4730
	
l394:
	line	198
	
l4730:
;batchpcb26k20.c: 198: parseCmd(linebufferp);
	movff	(main@linebufferp),(c:?_parseCmd)
	movff	(main@linebufferp+1),(c:?_parseCmd+1)
	call	_parseCmd	;wreg free
	line	199
	
l4732:
;batchpcb26k20.c: 199: linep = 0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@linep))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	200
;batchpcb26k20.c: 200: }
	goto	l4738
	line	201
	
l392:
	
l4734:
;batchpcb26k20.c: 201: else linebuffer[linep++] = c_temp;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@linep))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(main@linebuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlb	0	; () banked
	movlw	high(main@linebuffer)
	addwfc	1+c:fsr2l
	movlb	0	; () banked
	movff	(main@c_temp),indf2

	
l4736:
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((main@linep))&0ffh
	goto	l4738
	
l395:
	goto	l4738
	line	202
	
l390:
	line	195
	
l4738:
	call	_sInWaiting	;wreg free
	iorlw	0
	btfss	status,2
	goto	u6231
	goto	u6230
u6231:
	goto	l4724
u6230:
	goto	l4706
	
l396:
	goto	l4706
	line	203
	
l397:
	line	173
	goto	l4706
	
l398:
	line	204
	
l399:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 13 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\hardware_config_10.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   84[COMRAM] int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\hardware_config_10.h"
	line	13
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:
	opt	stack 29
	line	14
	
l3196:
;hardware_config_10.h: 14: TRISC = 0b10000000;
	movlw	low(080h)
	movwf	((c:3988)),c	;volatile
	line	15
;hardware_config_10.h: 15: TRISB = 0b00000000;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	16
;hardware_config_10.h: 16: TRISA = 0b00000110;
	movlw	low(06h)
	movwf	((c:3986)),c	;volatile
	line	22
;hardware_config_10.h: 22: ADCON0 = 0;
	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	23
;hardware_config_10.h: 23: ANSEL = 0;
	movlw	low(0)
	movwf	((c:3966)),c	;volatile
	line	24
;hardware_config_10.h: 24: ANSELH = 0;
	movlw	low(0)
	movwf	((c:3967)),c	;volatile
	line	33
;hardware_config_10.h: 33: TXSTA = 0b00100100;
	movlw	low(024h)
	movwf	((c:4012)),c	;volatile
	line	34
;hardware_config_10.h: 34: RCSTA = 0b10010000;
	movlw	low(090h)
	movwf	((c:4011)),c	;volatile
	line	36
;hardware_config_10.h: 36: SPBRG = ((32000000/9600)/16)-1;
	movlw	low(0CFh)
	movwf	((c:4015)),c	;volatile
	line	39
;hardware_config_10.h: 39: INTCON = 0b01000000;
	movlw	low(040h)
	movwf	((c:4082)),c	;volatile
	line	40
;hardware_config_10.h: 40: PIE1 = 0b00100000;
	movlw	low(020h)
	movwf	((c:3997)),c	;volatile
	line	41
	
l85:
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,90
	global	_startupBlinkLed

;; *************** function _startupBlinkLed *****************
;; Defined at:
;;		line 55 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delayms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
psect	text2
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	55
	global	__size_of_startupBlinkLed
	__size_of_startupBlinkLed	equ	__end_of_startupBlinkLed-_startupBlinkLed
	
_startupBlinkLed:
	opt	stack 28
	line	57
	
l3266:
;batchpcb26k20.c: 56: char j;
;batchpcb26k20.c: 57: for (j = 0; j < 5; j++){
	movwf	(??_startupBlinkLed+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:startupBlinkLed@j)),c
	movf	(??_startupBlinkLed+0+0)&0ffh,c,w
	
l3268:
	movlw	(05h-1)
	cpfsgt	((c:startupBlinkLed@j)),c
	goto	u3551
	goto	u3550
u3551:
	goto	l130
u3550:
	goto	l132
	
l3270:
	goto	l132
	
l130:
	line	58
;batchpcb26k20.c: 58: LATC4 = LATC5 ^= 1;
	btg	c:(31837/8),(31837)&7	;volatile
	btfsc	c:(31837/8),(31837)&7	;volatile
	goto	u3561
	goto	u3560
u3561:
	bsf	c:(31836/8),(31836)&7	;volatile
	goto	u3575
u3560:
	bcf	c:(31836/8),(31836)&7	;volatile
u3575:
	line	59
	
l3272:
;batchpcb26k20.c: 59: delayms(100);
	movlw	high(064h)
	movwf	((c:?_delayms+1)),c
	movlw	low(064h)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	57
	
l3274:
	incf	((c:startupBlinkLed@j)),c
	
l3276:
	movlw	(05h-1)
	cpfsgt	((c:startupBlinkLed@j)),c
	goto	u3581
	goto	u3580
u3581:
	goto	l130
u3580:
	goto	l132
	
l131:
	line	61
	
l132:
	return
	opt stack 0
GLOBAL	__end_of_startupBlinkLed
	__end_of_startupBlinkLed:
	signat	_startupBlinkLed,88
	global	_rfReceive

;; *************** function _rfReceive *****************
;; Defined at:
;;		line 154 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
;; Parameters:    Size  Location     Type
;;  rf_state        1   49[COMRAM] unsigned char 
;;  rf_pulse_len    1   50[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_printGao
;;		_printNexa
;;		_printDoro
;;		_printEsic
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
global __ptext3
__ptext3:
psect	text3
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
	line	154
	global	__size_of_rfReceive
	__size_of_rfReceive	equ	__end_of_rfReceive-_rfReceive
	
_rfReceive:
	opt	stack 27
	line	156
	
l4440:
;rf_rx.h: 156: gaobit = 4;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(04h)
	movwf	((c:_gaobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	157
	
l4442:
;rf_rx.h: 157: if (rf_state){
	movf	((c:rfReceive@rf_state)),c,w
	btfsc	status,2
	goto	u5581
	goto	u5580
u5581:
	goto	l4454
u5580:
	line	158
	
l4444:
;rf_rx.h: 158: if ((rf_pulse_length > 20)&&(rf_pulse_length < 45)){
	movlw	(015h-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5591
	goto	u5590
u5591:
	goto	l4452
u5590:
	
l4446:
	movlw	(02Dh)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5601
	goto	u5600
u5601:
	goto	l4452
u5600:
	line	159
	
l4448:
;rf_rx.h: 159: gao_symbols &= 0xFF ^ (1 << gao_nrsymbols);
	movff	(c:_gao_nrsymbols),??_rfReceive+0+0
	movlw	(01h)&0ffh
	movwf	(??_rfReceive+1+0)&0ffh,c
	incf	(??_rfReceive+0+0),c
	goto	u5614
u5615:
	bcf	status,0
	rlcf	((??_rfReceive+1+0)),c
u5614:
	decfsz	(??_rfReceive+0+0),c
	goto	u5615
	movf	((??_rfReceive+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_gao_symbols)),c
	line	160
	
l4450:
;rf_rx.h: 160: gao_nrsymbols++;
	incf	((c:_gao_nrsymbols)),c
	line	161
;rf_rx.h: 161: }
	goto	l4472
	line	162
	
l214:
	line	163
	
l4452:
;rf_rx.h: 162: else{
;rf_rx.h: 163: gao_nrsymbols = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gao_nrsymbols)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	164
;rf_rx.h: 164: gaobit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_gaobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4472
	line	165
	
l215:
	line	166
;rf_rx.h: 165: }
;rf_rx.h: 166: }
	goto	l4472
	line	167
	
l213:
	line	168
	
l4454:
;rf_rx.h: 167: else{
;rf_rx.h: 168: if((rf_pulse_length > 20)&&(rf_pulse_length < 45)){
	movlw	(015h-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5621
	goto	u5620
u5621:
	goto	l4462
u5620:
	
l4456:
	movlw	(02Dh)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5631
	goto	u5630
u5631:
	goto	l4462
u5630:
	line	169
	
l4458:
;rf_rx.h: 169: gao_symbols &= 0xFF ^ (1 << gao_nrsymbols);
	movff	(c:_gao_nrsymbols),??_rfReceive+0+0
	movlw	(01h)&0ffh
	movwf	(??_rfReceive+1+0)&0ffh,c
	incf	(??_rfReceive+0+0),c
	goto	u5644
u5645:
	bcf	status,0
	rlcf	((??_rfReceive+1+0)),c
u5644:
	decfsz	(??_rfReceive+0+0),c
	goto	u5645
	movf	((??_rfReceive+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_gao_symbols)),c
	line	170
	
l4460:
;rf_rx.h: 170: gao_nrsymbols++;
	incf	((c:_gao_nrsymbols)),c
	line	171
;rf_rx.h: 171: }
	goto	l4472
	line	172
	
l217:
	
l4462:
;rf_rx.h: 172: else if((rf_pulse_length > 60)&&(rf_pulse_length < 90)){
	movlw	(03Dh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5651
	goto	u5650
u5651:
	goto	l4470
u5650:
	
l4464:
	movlw	(05Ah)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5661
	goto	u5660
u5661:
	goto	l4470
u5660:
	line	173
	
l4466:
;rf_rx.h: 173: gao_symbols |= 1 << gao_nrsymbols;
	movff	(c:_gao_nrsymbols),??_rfReceive+0+0
	movlw	(01h)&0ffh
	movwf	(??_rfReceive+1+0)&0ffh,c
	incf	(??_rfReceive+0+0),c
	goto	u5674
u5675:
	bcf	status,0
	rlcf	((??_rfReceive+1+0)),c
u5674:
	decfsz	(??_rfReceive+0+0),c
	goto	u5675
	movf	((??_rfReceive+1+0)),c,w
	iorwf	((c:_gao_symbols)),c
	line	174
	
l4468:
;rf_rx.h: 174: gao_nrsymbols++;
	incf	((c:_gao_nrsymbols)),c
	line	175
;rf_rx.h: 175: }
	goto	l4472
	line	176
	
l219:
	line	177
	
l4470:
;rf_rx.h: 176: else{
;rf_rx.h: 177: gao_nrsymbols = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gao_nrsymbols)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	178
;rf_rx.h: 178: gaobit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_gaobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4472
	line	179
	
l220:
	goto	l4472
	
l218:
	goto	l4472
	line	180
	
l216:
	line	181
	
l4472:
;rf_rx.h: 179: }
;rf_rx.h: 180: }
;rf_rx.h: 181: if (gao_nrsymbols >= 4){
	movlw	(04h-1)
	cpfsgt	((c:_gao_nrsymbols)),c
	goto	u5681
	goto	u5680
u5681:
	goto	l4488
u5680:
	line	182
	
l4474:
;rf_rx.h: 182: if (gao_symbols == 0) gaobit = 5;
	tstfsz	((c:_gao_symbols)),c
	goto	u5691
	goto	u5690
u5691:
	goto	l4478
u5690:
	
l4476:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(05h)
	movwf	((c:_gaobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l223
	line	183
	
l222:
	
l4478:
;rf_rx.h: 183: else if (gao_symbols == 0b1000) gaobit = 0;
	movf	((c:_gao_symbols)),c,w
	xorlw	8

	btfss	status,2
	goto	u5701
	goto	u5700
u5701:
	goto	l4482
u5700:
	
l4480:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gaobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l223
	line	184
	
l224:
	
l4482:
;rf_rx.h: 184: else if (gao_symbols == 0b0010) gaobit = 1;
	movf	((c:_gao_symbols)),c,w
	xorlw	2

	btfss	status,2
	goto	u5711
	goto	u5710
u5711:
	goto	l4486
u5710:
	
l4484:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_gaobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l223
	line	185
	
l226:
	
l4486:
;rf_rx.h: 185: else gaobit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_gaobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l223
	
l227:
	goto	l223
	
l225:
	
l223:
	line	186
;rf_rx.h: 186: gao_nrsymbols = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gao_nrsymbols)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4488
	line	187
	
l221:
	line	190
	
l4488:
;rf_rx.h: 187: }
;rf_rx.h: 190: if(gaobit != 4){
	movf	((c:_gaobit)),c,w
	xorlw	4

	btfsc	status,2
	goto	u5721
	goto	u5720
u5721:
	goto	l4524
u5720:
	goto	l4522
	line	191
	
l4490:
;rf_rx.h: 191: switch (gao_state){
	goto	l4522
	line	192
;rf_rx.h: 192: case 0:
	
l230:
	line	193
	
l4492:
;rf_rx.h: 193: if(gaobit != 2){
	movf	((c:_gaobit)),c,w
	xorlw	2

	btfsc	status,2
	goto	u5731
	goto	u5730
u5731:
	goto	l4524
u5730:
	line	194
	
l4494:
;rf_rx.h: 194: if ((gaobit == 5)&&(gao_preamble_data == 5)) gao_state = 1;
	movf	((c:_gaobit)),c,w
	xorlw	5

	btfss	status,2
	goto	u5741
	goto	u5740
u5741:
	goto	l4500
u5740:
	
l4496:
	movf	((c:_gao_preamble_data)),c,w
	xorlw	5

	btfss	status,2
	goto	u5751
	goto	u5750
u5751:
	goto	l4500
u5750:
	
l4498:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_gao_state)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4500
	
l232:
	line	195
	
l4500:
;rf_rx.h: 195: gao_preamble_data = gaobit;
	movff	(c:_gaobit),(c:_gao_preamble_data)
	goto	l4524
	line	196
	
l231:
	line	197
;rf_rx.h: 196: }
;rf_rx.h: 197: break;
	goto	l4524
	line	198
;rf_rx.h: 198: case 1:
	
l234:
	line	199
	
l4502:
;rf_rx.h: 199: if (gaobit == 2){
	movf	((c:_gaobit)),c,w
	xorlw	2

	btfss	status,2
	goto	u5761
	goto	u5760
u5761:
	goto	l4506
u5760:
	line	200
	
l4504:
;rf_rx.h: 200: gao_nrbits = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gao_nrbits)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	201
;rf_rx.h: 201: gao_state = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gao_state)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	202
;rf_rx.h: 202: }
	goto	l236
	line	203
	
l235:
	line	204
	
l4506:
;rf_rx.h: 203: else{
;rf_rx.h: 204: gao_data <<= 1;
	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rlcf	((_gao_data))&0ffh
	movlb	0	; () banked
	rlcf	((_gao_data+1))&0ffh
	movlb	0	; () banked
	rlcf	((_gao_data+2))&0ffh
	movlb	0	; () banked
	rlcf	((_gao_data+3))&0ffh
	line	205
	
l4508:
;rf_rx.h: 205: gao_data |= gaobit;
	movf	((c:_gaobit)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	((_gao_data))&0ffh
	line	206
	
l4510:
;rf_rx.h: 206: gao_nrbits++;
	incf	((c:_gao_nrbits)),c
	line	207
	
l236:
	line	208
;rf_rx.h: 207: }
;rf_rx.h: 208: if (gao_nrbits == 25){
	movf	((c:_gao_nrbits)),c,w
	xorlw	25

	btfss	status,2
	goto	u5771
	goto	u5770
u5771:
	goto	l4524
u5770:
	line	209
	
l4512:
;rf_rx.h: 209: gao_data <<= 8;
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(_gao_data+2),(_gao_data+3)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(_gao_data+1),(_gao_data+2)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(_gao_data),(_gao_data+1)
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	((_gao_data))&0ffh
	line	210
	
l4514:
;rf_rx.h: 210: printGao(gao_data);
	movff	(_gao_data),(c:?_printGao)
	movff	(_gao_data+1),(c:?_printGao+1)
	movff	(_gao_data+2),(c:?_printGao+2)
	movff	(_gao_data+3),(c:?_printGao+3)
	call	_printGao	;wreg free
	line	211
	
l4516:
;rf_rx.h: 211: gao_nrbits = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gao_nrbits)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	212
	
l4518:
;rf_rx.h: 212: gao_state = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_gao_state)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4524
	line	213
	
l237:
	line	214
;rf_rx.h: 213: }
;rf_rx.h: 214: break;
	goto	l4524
	line	215
	
l4520:
;rf_rx.h: 215: }
	goto	l4524
	line	191
	
l229:
	
l4522:
	movf	((c:_gao_state)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l4492
	xorlw	1^0	; case 1
	skipnz
	goto	l4502
	goto	l4524

	line	215
	
l233:
	goto	l4524
	line	216
	
l228:
	line	219
	
l4524:
;rf_rx.h: 216: }
;rf_rx.h: 219: nexabit = 4;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(04h)
	movwf	((c:_nexabit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	220
	
l4526:
;rf_rx.h: 220: if (rf_state){
	movf	((c:rfReceive@rf_state)),c,w
	btfsc	status,2
	goto	u5781
	goto	u5780
u5781:
	goto	l4538
u5780:
	line	221
	
l4528:
;rf_rx.h: 221: if ((rf_pulse_length > 5)&&(rf_pulse_length < 20)){
	movlw	(06h-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5791
	goto	u5790
u5791:
	goto	l4536
u5790:
	
l4530:
	movlw	(014h)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5801
	goto	u5800
u5801:
	goto	l4536
u5800:
	line	222
	
l4532:
;rf_rx.h: 222: nexa_symbols &= 0xFF ^ (1 << nexa_nrsymbols);
	movff	(c:_nexa_nrsymbols),??_rfReceive+0+0
	movlw	(01h)&0ffh
	movwf	(??_rfReceive+1+0)&0ffh,c
	incf	(??_rfReceive+0+0),c
	goto	u5814
u5815:
	bcf	status,0
	rlcf	((??_rfReceive+1+0)),c
u5814:
	decfsz	(??_rfReceive+0+0),c
	goto	u5815
	movf	((??_rfReceive+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_nexa_symbols)),c
	line	223
	
l4534:
;rf_rx.h: 223: nexa_nrsymbols++;
	incf	((c:_nexa_nrsymbols)),c
	line	224
;rf_rx.h: 224: }
	goto	l4556
	line	225
	
l239:
	line	226
	
l4536:
;rf_rx.h: 225: else{
;rf_rx.h: 226: nexa_nrsymbols = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_nexa_nrsymbols)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	227
;rf_rx.h: 227: nexabit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_nexabit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4556
	line	228
	
l240:
	line	229
;rf_rx.h: 228: }
;rf_rx.h: 229: }
	goto	l4556
	line	230
	
l238:
	line	231
	
l4538:
;rf_rx.h: 230: else{
;rf_rx.h: 231: if((rf_pulse_length > 12)&&(rf_pulse_length < 23)){
	movlw	(0Dh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5821
	goto	u5820
u5821:
	goto	l4546
u5820:
	
l4540:
	movlw	(017h)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5831
	goto	u5830
u5831:
	goto	l4546
u5830:
	line	232
	
l4542:
;rf_rx.h: 232: nexa_symbols &= 0xFF ^ (1 << nexa_nrsymbols);
	movff	(c:_nexa_nrsymbols),??_rfReceive+0+0
	movlw	(01h)&0ffh
	movwf	(??_rfReceive+1+0)&0ffh,c
	incf	(??_rfReceive+0+0),c
	goto	u5844
u5845:
	bcf	status,0
	rlcf	((??_rfReceive+1+0)),c
u5844:
	decfsz	(??_rfReceive+0+0),c
	goto	u5845
	movf	((??_rfReceive+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_nexa_symbols)),c
	line	233
	
l4544:
;rf_rx.h: 233: nexa_nrsymbols++;
	incf	((c:_nexa_nrsymbols)),c
	line	234
;rf_rx.h: 234: }
	goto	l4556
	line	235
	
l242:
	
l4546:
;rf_rx.h: 235: else if((rf_pulse_length > 60)&&(rf_pulse_length < 100)){
	movlw	(03Dh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5851
	goto	u5850
u5851:
	goto	l4554
u5850:
	
l4548:
	movlw	(064h)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5861
	goto	u5860
u5861:
	goto	l4554
u5860:
	line	236
	
l4550:
;rf_rx.h: 236: nexa_symbols |= 1 << nexa_nrsymbols;
	movff	(c:_nexa_nrsymbols),??_rfReceive+0+0
	movlw	(01h)&0ffh
	movwf	(??_rfReceive+1+0)&0ffh,c
	incf	(??_rfReceive+0+0),c
	goto	u5874
u5875:
	bcf	status,0
	rlcf	((??_rfReceive+1+0)),c
u5874:
	decfsz	(??_rfReceive+0+0),c
	goto	u5875
	movf	((??_rfReceive+1+0)),c,w
	iorwf	((c:_nexa_symbols)),c
	line	237
	
l4552:
;rf_rx.h: 237: nexa_nrsymbols++;
	incf	((c:_nexa_nrsymbols)),c
	line	238
;rf_rx.h: 238: }
	goto	l4556
	line	239
	
l244:
	line	240
	
l4554:
;rf_rx.h: 239: else{
;rf_rx.h: 240: nexa_nrsymbols = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_nexa_nrsymbols)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	241
;rf_rx.h: 241: nexabit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_nexabit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4556
	line	242
	
l245:
	goto	l4556
	
l243:
	goto	l4556
	line	243
	
l241:
	line	244
	
l4556:
;rf_rx.h: 242: }
;rf_rx.h: 243: }
;rf_rx.h: 244: if (nexa_nrsymbols >= 4){
	movlw	(04h-1)
	cpfsgt	((c:_nexa_nrsymbols)),c
	goto	u5881
	goto	u5880
u5881:
	goto	l4572
u5880:
	line	245
	
l4558:
;rf_rx.h: 245: if (nexa_symbols == 0) nexabit = 6;
	tstfsz	((c:_nexa_symbols)),c
	goto	u5891
	goto	u5890
u5891:
	goto	l4562
u5890:
	
l4560:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(06h)
	movwf	((c:_nexabit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l248
	line	246
	
l247:
	
l4562:
;rf_rx.h: 246: else if (nexa_symbols == 0b1000) nexabit = 0;
	movf	((c:_nexa_symbols)),c,w
	xorlw	8

	btfss	status,2
	goto	u5901
	goto	u5900
u5901:
	goto	l4566
u5900:
	
l4564:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_nexabit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l248
	line	247
	
l249:
	
l4566:
;rf_rx.h: 247: else if (nexa_symbols == 0b0010) nexabit = 1;
	movf	((c:_nexa_symbols)),c,w
	xorlw	2

	btfss	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l4570
u5910:
	
l4568:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_nexabit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l248
	line	248
	
l251:
	
l4570:
;rf_rx.h: 248: else nexabit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_nexabit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l248
	
l252:
	goto	l248
	
l250:
	
l248:
	line	249
;rf_rx.h: 249: nexa_nrsymbols = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_nexa_nrsymbols)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4572
	line	250
	
l246:
	line	253
	
l4572:
;rf_rx.h: 250: }
;rf_rx.h: 253: if(nexabit != 4){
	movf	((c:_nexabit)),c,w
	xorlw	4

	btfsc	status,2
	goto	u5921
	goto	u5920
u5921:
	goto	l4588
u5920:
	line	254
	
l4574:
;rf_rx.h: 254: if (nexabit == 2) nexa_nrbits = 0;
	movf	((c:_nexabit)),c,w
	xorlw	2

	btfss	status,2
	goto	u5931
	goto	u5930
u5931:
	goto	l4578
u5930:
	
l4576:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_nexa_nrbits)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l255
	line	255
	
l254:
	line	256
	
l4578:
;rf_rx.h: 255: else{
;rf_rx.h: 256: nexa_data <<= 1;
	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rlcf	((_nexa_data))&0ffh
	movlb	0	; () banked
	rlcf	((_nexa_data+1))&0ffh
	movlb	0	; () banked
	rlcf	((_nexa_data+2))&0ffh
	movlb	0	; () banked
	rlcf	((_nexa_data+3))&0ffh
	line	257
	
l4580:
;rf_rx.h: 257: nexa_data |= nexabit;
	movf	((c:_nexabit)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	((_nexa_data))&0ffh
	line	258
	
l4582:
;rf_rx.h: 258: nexa_nrbits++;
	incf	((c:_nexa_nrbits)),c
	line	259
	
l255:
	line	260
;rf_rx.h: 259: }
;rf_rx.h: 260: if (nexa_nrbits == 32){
	movf	((c:_nexa_nrbits)),c,w
	xorlw	32

	btfss	status,2
	goto	u5941
	goto	u5940
u5941:
	goto	l4588
u5940:
	line	261
	
l4584:
;rf_rx.h: 261: printNexa(nexa_data);
	movff	(_nexa_data),(c:?_printNexa)
	movff	(_nexa_data+1),(c:?_printNexa+1)
	movff	(_nexa_data+2),(c:?_printNexa+2)
	movff	(_nexa_data+3),(c:?_printNexa+3)
	call	_printNexa	;wreg free
	line	262
	
l4586:
;rf_rx.h: 262: nexa_nrbits = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_nexa_nrbits)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4588
	line	263
	
l256:
	goto	l4588
	line	264
	
l253:
	line	267
	
l4588:
;rf_rx.h: 263: }
;rf_rx.h: 264: }
;rf_rx.h: 267: if(rf_state){
	movf	((c:rfReceive@rf_state)),c,w
	btfsc	status,2
	goto	u5951
	goto	u5950
u5951:
	goto	l4604
u5950:
	line	268
	
l4590:
;rf_rx.h: 268: if ((rf_pulse_length > 29)&&(rf_pulse_length < 50)) dorobit = 1;
	movlw	(01Eh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5961
	goto	u5960
u5961:
	goto	l4596
u5960:
	
l4592:
	movlw	(032h)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5971
	goto	u5970
u5971:
	goto	l4596
u5970:
	
l4594:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_dorobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4614
	line	269
	
l258:
	
l4596:
;rf_rx.h: 269: else if ((rf_pulse_length > 10)&&(rf_pulse_length < 30)) dorobit = 0;
	movlw	(0Bh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u5981
	goto	u5980
u5981:
	goto	l4602
u5980:
	
l4598:
	movlw	(01Eh)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u5991
	goto	u5990
u5991:
	goto	l4602
u5990:
	
l4600:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_dorobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4614
	line	270
	
l260:
	
l4602:
;rf_rx.h: 270: else dorobit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_dorobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4614
	
l261:
	goto	l4614
	
l259:
	line	271
;rf_rx.h: 271: }
	goto	l4614
	line	272
	
l257:
	
l4604:
;rf_rx.h: 272: else if ((rf_pulse_length > 49)||(rf_pulse_length < 11)||(dorobit == 4)) dorobit = 2;
	movlw	(032h)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u6001
	goto	u6000
u6001:
	goto	l4610
u6000:
	
l4606:
	movlw	(0Bh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u6011
	goto	u6010
u6011:
	goto	l4610
u6010:
	
l4608:
	movf	((c:_dorobit)),c,w
	xorlw	4

	btfss	status,2
	goto	u6021
	goto	u6020
u6021:
	goto	l4612
u6020:
	goto	l4610
	
l265:
	
l4610:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_dorobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4614
	line	273
	
l263:
	
l4612:
;rf_rx.h: 273: else dorobit = 4;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(04h)
	movwf	((c:_dorobit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4614
	
l266:
	goto	l4614
	
l262:
	line	276
	
l4614:
;rf_rx.h: 276: if ((dorobit == 1)||(dorobit == 0)){
	decf	((c:_dorobit)),c,w

	btfsc	status,2
	goto	u6031
	goto	u6030
u6031:
	goto	l4618
u6030:
	
l4616:
	tstfsz	((c:_dorobit)),c
	goto	u6041
	goto	u6040
u6041:
	goto	l4624
u6040:
	goto	l4618
	
l269:
	line	277
	
l4618:
;rf_rx.h: 277: doro_data <<= 1;
	bcf	status,0
	rlcf	((c:_doro_data)),c
	rlcf	((c:_doro_data+1)),c
	line	278
	
l4620:
;rf_rx.h: 278: doro_data |= dorobit;
	movf	((c:_dorobit)),c,w
	iorwf	((c:_doro_data)),c
	line	279
	
l4622:
;rf_rx.h: 279: doro_nrbits++;
	incf	((c:_doro_nrbits)),c
	line	280
;rf_rx.h: 280: }
	goto	l4632
	line	281
	
l267:
	
l4624:
;rf_rx.h: 281: else if (dorobit == 2){
	movf	((c:_dorobit)),c,w
	xorlw	2

	btfss	status,2
	goto	u6051
	goto	u6050
u6051:
	goto	l4632
u6050:
	line	282
	
l4626:
;rf_rx.h: 282: if (doro_nrbits == 13) printDoro(doro_data);
	movf	((c:_doro_nrbits)),c,w
	xorlw	13

	btfss	status,2
	goto	u6061
	goto	u6060
u6061:
	goto	l4630
u6060:
	
l4628:
	movff	(c:_doro_data),(c:?_printDoro)
	movff	(c:_doro_data+1),(c:?_printDoro+1)
	call	_printDoro	;wreg free
	goto	l4630
	
l272:
	line	283
	
l4630:
;rf_rx.h: 283: doro_nrbits = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_doro_nrbits)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4632
	line	284
	
l271:
	goto	l4632
	line	287
	
l270:
	
l4632:
;rf_rx.h: 284: }
;rf_rx.h: 287: if((rf_pulse_length > 30)&&(rf_pulse_length < 90)){
	movlw	(01Fh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u6071
	goto	u6070
u6071:
	goto	l4642
u6070:
	
l4634:
	movlw	(05Ah)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u6081
	goto	u6080
u6081:
	goto	l4642
u6080:
	line	288
	
l4636:
;rf_rx.h: 288: if(!esic_previous_short) esic_previous_short = 1;
	tstfsz	((c:_esic_previous_short)),c
	goto	u6091
	goto	u6090
u6091:
	goto	l4640
u6090:
	
l4638:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_esic_previous_short)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4654
	line	289
	
l274:
	line	290
	
l4640:
;rf_rx.h: 289: else{
;rf_rx.h: 290: esicbit = 1;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_esicbit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	291
;rf_rx.h: 291: esic_previous_short = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_previous_short)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4654
	line	292
	
l275:
	line	293
;rf_rx.h: 292: }
;rf_rx.h: 293: }
	goto	l4654
	line	294
	
l273:
	
l4642:
;rf_rx.h: 294: else if((rf_pulse_length > 90)&&(rf_pulse_length < 150)){
	movlw	(05Bh-1)
	cpfsgt	((c:rfReceive@rf_pulse_length)),c
	goto	u6101
	goto	u6100
u6101:
	goto	l4652
u6100:
	
l4644:
	movlw	(096h)&0ffh
	cpfslt	((c:rfReceive@rf_pulse_length)),c
	goto	u6111
	goto	u6110
u6111:
	goto	l4652
u6110:
	line	295
	
l4646:
;rf_rx.h: 295: esicbit = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esicbit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	296
	
l4648:
;rf_rx.h: 296: if(esic_previous_short) esic_previous_short = 0;
	movf	((c:_esic_previous_short)),c,w
	btfsc	status,2
	goto	u6121
	goto	u6120
u6121:
	goto	l4654
u6120:
	
l4650:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_previous_short)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4654
	
l278:
	line	297
;rf_rx.h: 297: }
	goto	l4654
	line	298
	
l277:
	line	299
	
l4652:
;rf_rx.h: 298: else{
;rf_rx.h: 299: esicbit = 2;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_esicbit)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	300
;rf_rx.h: 300: esic_previous_short = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_previous_short)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l4654
	line	301
	
l279:
	goto	l4654
	
l276:
	line	304
	
l4654:
;rf_rx.h: 301: }
;rf_rx.h: 304: if(!esic_previous_short){
	tstfsz	((c:_esic_previous_short)),c
	goto	u6131
	goto	u6130
u6131:
	goto	l291
u6130:
	goto	l4684
	line	305
	
l4656:
;rf_rx.h: 305: switch (esic_state){
	goto	l4684
	line	306
;rf_rx.h: 306: case 0:
	
l282:
	line	307
	
l4658:
;rf_rx.h: 307: if(esicbit != 2){
	movf	((c:_esicbit)),c,w
	xorlw	2

	btfsc	status,2
	goto	u6141
	goto	u6140
u6141:
	goto	l4664
u6140:
	line	308
	
l4660:
;rf_rx.h: 308: esic_preamble_data <<= 1;
	bcf status,0
	rlcf	((c:_esic_preamble_data)),c

	line	309
;rf_rx.h: 309: esic_preamble_data |= esicbit;
	movf	((c:_esicbit)),c,w
	iorwf	((c:_esic_preamble_data)),c
	line	310
;rf_rx.h: 310: if ((esic_preamble_data & 0b00001111) == 0b00001100) esic_state = 1;
	movf	((c:_esic_preamble_data)),c,w
	andlw	low(0Fh)
	xorlw	0Ch
	btfss	status,2
	goto	u6151
	goto	u6150
u6151:
	goto	l291
u6150:
	
l4662:
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_esic_state)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l291
	
l284:
	line	311
;rf_rx.h: 311: }
	goto	l291
	line	312
	
l283:
	
l4664:
;rf_rx.h: 312: else esic_preamble_data = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_preamble_data)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l291
	
l285:
	line	313
;rf_rx.h: 313: break;
	goto	l291
	line	314
;rf_rx.h: 314: case 1:
	
l287:
	line	315
	
l4666:
;rf_rx.h: 315: if (esicbit == 2){
	movf	((c:_esicbit)),c,w
	xorlw	2

	btfss	status,2
	goto	u6161
	goto	u6160
u6161:
	goto	l4670
u6160:
	line	316
	
l4668:
;rf_rx.h: 316: esic_nrbits = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_nrbits)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	317
;rf_rx.h: 317: esic_state = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_state)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	318
;rf_rx.h: 318: }
	goto	l289
	line	319
	
l288:
	line	320
	
l4670:
;rf_rx.h: 319: else{
;rf_rx.h: 320: esic_data <<= 1;
	bcf	status,0
	rlcf	((c:_esic_data)),c
	rlcf	((c:_esic_data+1)),c
	rlcf	((c:_esic_data+2)),c
	rlcf	((c:_esic_data+3)),c
	line	321
	
l4672:
;rf_rx.h: 321: esic_data |= esicbit;
	movf	((c:_esicbit)),c,w
	iorwf	((c:_esic_data)),c
	line	322
	
l4674:
;rf_rx.h: 322: esic_nrbits++;
	incf	((c:_esic_nrbits)),c
	line	323
	
l289:
	line	324
;rf_rx.h: 323: }
;rf_rx.h: 324: if (esic_nrbits == 32){
	movf	((c:_esic_nrbits)),c,w
	xorlw	32

	btfss	status,2
	goto	u6171
	goto	u6170
u6171:
	goto	l291
u6170:
	line	325
	
l4676:
;rf_rx.h: 325: printEsic(esic_data);
	movff	(c:_esic_data),(c:?_printEsic)
	movff	(c:_esic_data+1),(c:?_printEsic+1)
	movff	(c:_esic_data+2),(c:?_printEsic+2)
	movff	(c:_esic_data+3),(c:?_printEsic+3)
	call	_printEsic	;wreg free
	line	326
	
l4678:
;rf_rx.h: 326: esic_nrbits = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_nrbits)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	line	327
	
l4680:
;rf_rx.h: 327: esic_state = 0;
	movwf	(??_rfReceive+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_esic_state)),c
	movf	(??_rfReceive+0+0)&0ffh,c,w
	goto	l291
	line	328
	
l290:
	line	329
;rf_rx.h: 328: }
;rf_rx.h: 329: break;
	goto	l291
	line	330
	
l4682:
;rf_rx.h: 330: }
	goto	l291
	line	305
	
l281:
	
l4684:
	movf	((c:_esic_state)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l4658
	xorlw	1^0	; case 1
	skipnz
	goto	l4666
	goto	l291

	line	330
	
l286:
	goto	l291
	line	331
	
l280:
	line	332
	
l291:
	return
	opt stack 0
GLOBAL	__end_of_rfReceive
	__end_of_rfReceive:
	signat	_rfReceive,8312
	global	_printNexa

;; *************** function _printNexa *****************
;; Defined at:
;;		line 41 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
;; Parameters:    Size  Location     Type
;;  data            4   17[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  j               1   25[COMRAM] unsigned char 
;;  number          4   26[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sPuts
;;		_sPutonehex
;;		_sPut
;;		_blinkRxLed
;; This function is called by:
;;		_rfReceive
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
global __ptext4
__ptext4:
psect	text4
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
	line	41
	global	__size_of_printNexa
	__size_of_printNexa	equ	__end_of_printNexa-_printNexa
	
_printNexa:
	opt	stack 27
	line	43
	
l4282:
;rf_rx.h: 42: unsigned long number;
;rf_rx.h: 43: sPuts("$N");
	movlw	high(STR_3)
	movwf	((c:?_sPuts+1)),c
	movlw	low(STR_3)
	movwf	((c:?_sPuts)),c
	call	_sPuts	;wreg free
	line	44
	
l4284:
;rf_rx.h: 44: for (char j = 0; j < 6; j++){
	movwf	(??_printNexa+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:printNexa@j)),c
	movf	(??_printNexa+0+0)&0ffh,c,w
	
l4286:
	movlw	(06h-1)
	cpfsgt	((c:printNexa@j)),c
	goto	u5301
	goto	u5300
u5301:
	goto	l4290
u5300:
	goto	l4298
	
l4288:
	goto	l4298
	
l183:
	line	45
	
l4290:
;rf_rx.h: 45: number = data & 0xF0000000;
	movlw	0
	andwf	((c:printNexa@data)),c,w
	movwf	((c:printNexa@number)),c
	movlw	0
	andwf	((c:printNexa@data+1)),c,w
	movwf	1+((c:printNexa@number)),c
	movlw	0
	andwf	((c:printNexa@data+2)),c,w
	movwf	2+((c:printNexa@number)),c
	movlw	0F0h
	andwf	((c:printNexa@data+3)),c,w
	movwf	3+((c:printNexa@number)),c
	line	46
;rf_rx.h: 46: data <<= 4;
	movlw	04h
u5315:
	bcf	status,0
	rlcf	((c:printNexa@data)),c
	rlcf	((c:printNexa@data+1)),c
	rlcf	((c:printNexa@data+2)),c
	rlcf	((c:printNexa@data+3)),c
	decfsz	wreg
	goto	u5315
	line	47
;rf_rx.h: 47: number >>= 28;
	movlw	01Ch
	movwf	(??_printNexa+0+0)&0ffh,c
u5325:
	bcf	status,0
	rrcf	((c:printNexa@number+3)),c
	rrcf	((c:printNexa@number+2)),c
	rrcf	((c:printNexa@number+1)),c
	rrcf	((c:printNexa@number)),c
	decfsz	(??_printNexa+0+0)&0ffh,c
	goto	u5325

	line	48
	
l4292:
;rf_rx.h: 48: sPutonehex(number);
	movff	(c:printNexa@number),(c:?_sPutonehex)
	call	_sPutonehex	;wreg free
	line	44
	
l4294:
	incf	((c:printNexa@j)),c
	
l4296:
	movlw	(06h-1)
	cpfsgt	((c:printNexa@j)),c
	goto	u5331
	goto	u5330
u5331:
	goto	l4290
u5330:
	goto	l4298
	
l184:
	line	50
	
l4298:
;rf_rx.h: 49: }
;rf_rx.h: 50: number = data & 0xFF000000;
	movlw	0
	andwf	((c:printNexa@data)),c,w
	movwf	((c:printNexa@number)),c
	movlw	0
	andwf	((c:printNexa@data+1)),c,w
	movwf	1+((c:printNexa@number)),c
	movlw	0
	andwf	((c:printNexa@data+2)),c,w
	movwf	2+((c:printNexa@number)),c
	movlw	0FFh
	andwf	((c:printNexa@data+3)),c,w
	movwf	3+((c:printNexa@number)),c
	line	51
;rf_rx.h: 51: number >>= 24;
	movlw	018h
	movwf	(??_printNexa+0+0)&0ffh,c
u5345:
	bcf	status,0
	rrcf	((c:printNexa@number+3)),c
	rrcf	((c:printNexa@number+2)),c
	rrcf	((c:printNexa@number+1)),c
	rrcf	((c:printNexa@number)),c
	decfsz	(??_printNexa+0+0)&0ffh,c
	goto	u5345

	line	52
	
l4300:
;rf_rx.h: 52: sPut('0' + ((number & 0b11000000) >> 6));
	movff	(c:printNexa@number),??_printNexa+0+0
	movff	(c:printNexa@number+1),??_printNexa+0+0+1
	movff	(c:printNexa@number+2),??_printNexa+0+0+2
	movff	(c:printNexa@number+3),??_printNexa+0+0+3
	movlw	06h+1
	goto	u5350
u5355:
	bcf	status,0
	rrcf	(??_printNexa+0+3),c
	rrcf	(??_printNexa+0+2),c
	rrcf	(??_printNexa+0+1),c
	rrcf	(??_printNexa+0+0),c
u5350:
	decfsz	wreg
	goto	u5355
	movf	(??_printNexa+0+0),c,w
	andlw	low(03h)
	addlw	low(030h)
	movwf	((c:?_sPut)),c
	call	_sPut	;wreg free
	line	53
	
l4302:
;rf_rx.h: 53: if (number & 0b00100000) sPut('1');
	
	btfss	((c:printNexa@number)),c,(5)&7
	goto	u5361
	goto	u5360
u5361:
	goto	l4306
u5360:
	
l4304:
	movwf	(??_printNexa+0+0)&0ffh,c
	movlw	low(031h)
	movwf	((c:?_sPut)),c
	movf	(??_printNexa+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	goto	l186
	line	54
	
l185:
	
l4306:
;rf_rx.h: 54: else sPut('0');
	movwf	(??_printNexa+0+0)&0ffh,c
	movlw	low(030h)
	movwf	((c:?_sPut)),c
	movf	(??_printNexa+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	
l186:
	line	55
;rf_rx.h: 55: sPutonehex(number & 0b00001111);
	movf	((c:printNexa@number)),c,w
	andlw	low(0Fh)
	movwf	((c:?_sPutonehex)),c
	call	_sPutonehex	;wreg free
	line	56
	
l4308:
;rf_rx.h: 56: if (number & 0b00010000) sPut('1');
	
	btfss	((c:printNexa@number)),c,(4)&7
	goto	u5371
	goto	u5370
u5371:
	goto	l4312
u5370:
	
l4310:
	movwf	(??_printNexa+0+0)&0ffh,c
	movlw	low(031h)
	movwf	((c:?_sPut)),c
	movf	(??_printNexa+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	goto	l188
	line	57
	
l187:
	
l4312:
;rf_rx.h: 57: else sPut('0');
	movwf	(??_printNexa+0+0)&0ffh,c
	movlw	low(030h)
	movwf	((c:?_sPut)),c
	movf	(??_printNexa+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	
l188:
	line	58
;rf_rx.h: 58: sPut(10);
	movwf	(??_printNexa+0+0)&0ffh,c
	movlw	low(0Ah)
	movwf	((c:?_sPut)),c
	movf	(??_printNexa+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	59
	
l4314:
;rf_rx.h: 59: blinkRxLed();
	call	_blinkRxLed	;wreg free
	line	60
	
l189:
	return
	opt stack 0
GLOBAL	__end_of_printNexa
	__end_of_printNexa:
	signat	_printNexa,4216
	global	_printGao

;; *************** function _printGao *****************
;; Defined at:
;;		line 62 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
;; Parameters:    Size  Location     Type
;;  data            4   17[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  j               1   29[COMRAM] unsigned char 
;;  number          4   25[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sPuts
;;		_sPutonehex
;;		_sPut
;;		_blinkRxLed
;; This function is called by:
;;		_rfReceive
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
global __ptext5
__ptext5:
psect	text5
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
	line	62
	global	__size_of_printGao
	__size_of_printGao	equ	__end_of_printGao-_printGao
	
_printGao:
	opt	stack 27
	line	64
	
l4316:
;rf_rx.h: 63: unsigned long number;
;rf_rx.h: 64: sPuts("$G");
	movlw	high(STR_4)
	movwf	((c:?_sPuts+1)),c
	movlw	low(STR_4)
	movwf	((c:?_sPuts)),c
	call	_sPuts	;wreg free
	line	65
	
l4318:
;rf_rx.h: 65: for (char j = 0; j < 5; j++){
	movwf	(??_printGao+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:printGao@j)),c
	movf	(??_printGao+0+0)&0ffh,c,w
	
l4320:
	movlw	(05h-1)
	cpfsgt	((c:printGao@j)),c
	goto	u5381
	goto	u5380
u5381:
	goto	l4324
u5380:
	goto	l4332
	
l4322:
	goto	l4332
	
l192:
	line	66
	
l4324:
;rf_rx.h: 66: number = data & 0xF0000000;
	movlw	0
	andwf	((c:printGao@data)),c,w
	movwf	((c:printGao@number)),c
	movlw	0
	andwf	((c:printGao@data+1)),c,w
	movwf	1+((c:printGao@number)),c
	movlw	0
	andwf	((c:printGao@data+2)),c,w
	movwf	2+((c:printGao@number)),c
	movlw	0F0h
	andwf	((c:printGao@data+3)),c,w
	movwf	3+((c:printGao@number)),c
	line	67
;rf_rx.h: 67: data <<= 4;
	movlw	04h
u5395:
	bcf	status,0
	rlcf	((c:printGao@data)),c
	rlcf	((c:printGao@data+1)),c
	rlcf	((c:printGao@data+2)),c
	rlcf	((c:printGao@data+3)),c
	decfsz	wreg
	goto	u5395
	line	68
;rf_rx.h: 68: number >>= 28;
	movlw	01Ch
	movwf	(??_printGao+0+0)&0ffh,c
u5405:
	bcf	status,0
	rrcf	((c:printGao@number+3)),c
	rrcf	((c:printGao@number+2)),c
	rrcf	((c:printGao@number+1)),c
	rrcf	((c:printGao@number)),c
	decfsz	(??_printGao+0+0)&0ffh,c
	goto	u5405

	line	69
	
l4326:
;rf_rx.h: 69: sPutonehex(number);
	movff	(c:printGao@number),(c:?_sPutonehex)
	call	_sPutonehex	;wreg free
	line	65
	
l4328:
	incf	((c:printGao@j)),c
	
l4330:
	movlw	(05h-1)
	cpfsgt	((c:printGao@j)),c
	goto	u5411
	goto	u5410
u5411:
	goto	l4324
u5410:
	goto	l4332
	
l193:
	line	71
	
l4332:
;rf_rx.h: 70: }
;rf_rx.h: 71: if ((data & 0xF0000000) == 0xF0000000) sPut('1');
	movlw	0
	andwf	((c:printGao@data)),c,w
	movwf	(??_printGao+0+0)&0ffh,c
	movlw	0
	andwf	((c:printGao@data+1)),c,w
	movwf	1+(??_printGao+0+0)&0ffh,c
	movlw	0
	andwf	((c:printGao@data+2)),c,w
	movwf	2+(??_printGao+0+0)&0ffh,c
	movlw	0F0h
	andwf	((c:printGao@data+3)),c,w
	movwf	3+(??_printGao+0+0)&0ffh,c
	movf	(??_printGao+0+3),c,w
	xorlw	240
	iorwf (??_printGao+0+0),c,w
	iorwf (??_printGao+0+1),c,w
	iorwf (??_printGao+0+2),c,w

	btfss	status,2
	goto	u5421
	goto	u5420
u5421:
	goto	l4336
u5420:
	
l4334:
	movwf	(??_printGao+0+0)&0ffh,c
	movlw	low(031h)
	movwf	((c:?_sPut)),c
	movf	(??_printGao+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	goto	l195
	line	72
	
l194:
	
l4336:
;rf_rx.h: 72: else if ((data & 0xF0000000) == 0xA0000000) sPut('2');
	movlw	0
	andwf	((c:printGao@data)),c,w
	movwf	(??_printGao+0+0)&0ffh,c
	movlw	0
	andwf	((c:printGao@data+1)),c,w
	movwf	1+(??_printGao+0+0)&0ffh,c
	movlw	0
	andwf	((c:printGao@data+2)),c,w
	movwf	2+(??_printGao+0+0)&0ffh,c
	movlw	0F0h
	andwf	((c:printGao@data+3)),c,w
	movwf	3+(??_printGao+0+0)&0ffh,c
	movf	(??_printGao+0+3),c,w
	xorlw	160
	iorwf (??_printGao+0+0),c,w
	iorwf (??_printGao+0+1),c,w
	iorwf (??_printGao+0+2),c,w

	btfss	status,2
	goto	u5431
	goto	u5430
u5431:
	goto	l4340
u5430:
	
l4338:
	movwf	(??_printGao+0+0)&0ffh,c
	movlw	low(032h)
	movwf	((c:?_sPut)),c
	movf	(??_printGao+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	goto	l195
	line	73
	
l196:
	
l4340:
;rf_rx.h: 73: else sPut('0');
	movwf	(??_printGao+0+0)&0ffh,c
	movlw	low(030h)
	movwf	((c:?_sPut)),c
	movf	(??_printGao+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	goto	l195
	
l197:
	
l195:
	line	74
;rf_rx.h: 74: sPut(10);
	movwf	(??_printGao+0+0)&0ffh,c
	movlw	low(0Ah)
	movwf	((c:?_sPut)),c
	movf	(??_printGao+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	75
	
l4342:
;rf_rx.h: 75: blinkRxLed();
	call	_blinkRxLed	;wreg free
	line	76
	
l198:
	return
	opt stack 0
GLOBAL	__end_of_printGao
	__end_of_printGao:
	signat	_printGao,4216
	global	_printEsic

;; *************** function _printEsic *****************
;; Defined at:
;;		line 78 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
;; Parameters:    Size  Location     Type
;;  data            4   41[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    8[BANK0 ] unsigned char 
;;  temp            4   13[BANK0 ] unsigned long 
;;  temperature     4    9[BANK0 ] long 
;;  paritycalc      1    7[BANK0 ] unsigned char 
;;  parity          1    6[BANK0 ] unsigned char 
;;  lowbatt         1    5[BANK0 ] unsigned char 
;;  humidity        1    4[BANK0 ] unsigned char 
;;  channel         1    3[BANK0 ] unsigned char 
;;  house           1    2[BANK0 ] unsigned char 
;;  packetcount     1    1[BANK0 ] unsigned char 
;;  constantchec    1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      17       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8      17       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lmul
;;		___aldiv
;;		_sPuts
;;		_sPutint
;;		_sPut
;;		___almod
;;		___awdiv
;;		_blinkRxLed
;; This function is called by:
;;		_rfReceive
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
global __ptext6
__ptext6:
psect	text6
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
	line	78
	global	__size_of_printEsic
	__size_of_printEsic	equ	__end_of_printEsic-_printEsic
	
_printEsic:
	opt	stack 27
	line	82
	
l4344:
;rf_rx.h: 79: unsigned long temp;
;rf_rx.h: 80: char house;
;rf_rx.h: 81: char channel;
;rf_rx.h: 82: char constantcheck = 0;
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@constantcheck))&0ffh
	movf	(??_printEsic+0+0)&0ffh,c,w
	line	88
;rf_rx.h: 83: char humidity;
;rf_rx.h: 84: signed long temperature;
;rf_rx.h: 85: char lowbatt;
;rf_rx.h: 86: char packetcount;
;rf_rx.h: 87: char parity;
;rf_rx.h: 88: char paritycalc = 0;
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@paritycalc))&0ffh
	movf	(??_printEsic+0+0)&0ffh,c,w
	line	90
	
l4346:
;rf_rx.h: 90: parity = data & 0b11;
	movf	((c:printEsic@data)),c,w
	andlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@parity))&0ffh
	line	92
	
l4348:
;rf_rx.h: 92: temp = data;
	movff	(c:printEsic@data),(printEsic@temp)
	movff	(c:printEsic@data+1),(printEsic@temp+1)
	movff	(c:printEsic@data+2),(printEsic@temp+2)
	movff	(c:printEsic@data+3),(printEsic@temp+3)
	line	93
	
l4350:
;rf_rx.h: 93: for (char counter = 0; counter < 15; counter++){
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@counter))&0ffh
	movf	(??_printEsic+0+0)&0ffh,c,w
	
l4352:
	movlw	(0Fh-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((printEsic@counter))&0ffh
	goto	u5441
	goto	u5440
u5441:
	goto	l4356
u5440:
	goto	l4360
	
l4354:
	goto	l4360
	
l201:
	line	94
	
l4356:
;rf_rx.h: 94: temp = data & 0b11;
	movlw	03h
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlb	0	; () banked
	movlw	0
	andwf	((c:printEsic@data+1)),c,w
	movwf	1+((printEsic@temp))&0ffh
	movlb	0	; () banked
	movlw	0
	andwf	((c:printEsic@data+2)),c,w
	movwf	2+((printEsic@temp))&0ffh
	movlb	0	; () banked
	movlw	0
	andwf	((c:printEsic@data+3)),c,w
	movwf	3+((printEsic@temp))&0ffh
	line	95
;rf_rx.h: 95: paritycalc = paritycalc ^ temp;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((printEsic@paritycalc))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((printEsic@temp))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@paritycalc))&0ffh
	line	96
;rf_rx.h: 96: temp >>= 2;
	movlw	02h
	movwf	(??_printEsic+0+0)&0ffh,c
u5455:
	bcf	status,0
	movlb	0	; () banked
	movlb	0	; () banked
	rrcf	((printEsic@temp+3))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+2))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+1))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp))&0ffh
	decfsz	(??_printEsic+0+0)&0ffh,c
	goto	u5455

	line	93
	
l4358:
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((printEsic@counter))&0ffh
	movlw	(0Fh-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((printEsic@counter))&0ffh
	goto	u5461
	goto	u5460
u5461:
	goto	l4356
u5460:
	goto	l4360
	
l202:
	line	99
	
l4360:
;rf_rx.h: 97: }
;rf_rx.h: 99: temp = data & 0b00000011000000000000000000000000;
	movlw	0
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+1)),c,w
	movlb	0	; () banked
	movwf	1+((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+2)),c,w
	movlb	0	; () banked
	movwf	2+((printEsic@temp))&0ffh
	movlw	03h
	andwf	((c:printEsic@data+3)),c,w
	movlb	0	; () banked
	movwf	3+((printEsic@temp))&0ffh
	line	100
;rf_rx.h: 100: temp >>= 24;
	movlw	018h
	movwf	(??_printEsic+0+0)&0ffh,c
u5475:
	bcf	status,0
	movlb	0	; () banked
	movlb	0	; () banked
	rrcf	((printEsic@temp+3))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+2))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+1))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp))&0ffh
	decfsz	(??_printEsic+0+0)&0ffh,c
	goto	u5475

	line	102
;rf_rx.h: 102: if ((temp == 0b11)&&(paritycalc == parity)){
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((printEsic@temp))&0ffh,w
	xorlw	3
	iorwf ((printEsic@temp+1))&0ffh,w
	iorwf ((printEsic@temp+2))&0ffh,w
	iorwf ((printEsic@temp+3))&0ffh,w

	btfss	status,2
	goto	u5481
	goto	u5480
u5481:
	goto	l205
u5480:
	
l4362:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((printEsic@parity))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	cpfseq	((printEsic@paritycalc))&0ffh
	goto	u5491
	goto	u5490
u5491:
	goto	l205
u5490:
	line	103
	
l4364:
;rf_rx.h: 103: temp = data & 0b11110000000000000000000000000000;
	movlw	0
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+1)),c,w
	movlb	0	; () banked
	movwf	1+((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+2)),c,w
	movlb	0	; () banked
	movwf	2+((printEsic@temp))&0ffh
	movlw	0F0h
	andwf	((c:printEsic@data+3)),c,w
	movlb	0	; () banked
	movwf	3+((printEsic@temp))&0ffh
	line	104
;rf_rx.h: 104: house = temp >> 28;
	movlb	0	; () banked
	movff	(printEsic@temp),??_printEsic+0+0
	movlb	0	; () banked
	movff	(printEsic@temp+1),??_printEsic+0+0+1
	movlb	0	; () banked
	movff	(printEsic@temp+2),??_printEsic+0+0+2
	movlb	0	; () banked
	movff	(printEsic@temp+3),??_printEsic+0+0+3
	movlw	01Ch+1
	goto	u5500
u5505:
	bcf	status,0
	rrcf	(??_printEsic+0+3),c
	rrcf	(??_printEsic+0+2),c
	rrcf	(??_printEsic+0+1),c
	rrcf	(??_printEsic+0+0),c
u5500:
	decfsz	wreg
	goto	u5505
	movf	(??_printEsic+0+0),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@house))&0ffh
	line	106
;rf_rx.h: 106: temp = data & 0b00001100000000000000000000000000;
	movlw	0
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+1)),c,w
	movlb	0	; () banked
	movwf	1+((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+2)),c,w
	movlb	0	; () banked
	movwf	2+((printEsic@temp))&0ffh
	movlw	0Ch
	andwf	((c:printEsic@data+3)),c,w
	movlb	0	; () banked
	movwf	3+((printEsic@temp))&0ffh
	line	107
;rf_rx.h: 107: temp >>= 26;
	movlw	01Ah
	movwf	(??_printEsic+0+0)&0ffh,c
u5515:
	bcf	status,0
	movlb	0	; () banked
	movlb	0	; () banked
	rrcf	((printEsic@temp+3))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+2))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+1))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp))&0ffh
	decfsz	(??_printEsic+0+0)&0ffh,c
	goto	u5515

	line	108
;rf_rx.h: 108: channel = temp + 1;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((printEsic@temp))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@channel))&0ffh
	line	110
;rf_rx.h: 110: temp = data & 0b00000000100000000000000000000000;
	movlw	0
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+1)),c,w
	movlb	0	; () banked
	movwf	1+((printEsic@temp))&0ffh
	movlw	080h
	andwf	((c:printEsic@data+2)),c,w
	movlb	0	; () banked
	movwf	2+((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+3)),c,w
	movlb	0	; () banked
	movwf	3+((printEsic@temp))&0ffh
	line	111
	
l4366:
;rf_rx.h: 111: lowbatt = temp >> 23;
	movlb	0	; () banked
	rlcf	((printEsic@temp+2))&0ffh,w
	movlb	0	; () banked
	rlcf	((printEsic@temp+3))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@lowbatt))&0ffh
	line	113
	
l4368:
;rf_rx.h: 113: temp = data & 0b00000000011111111000000000000000;
	movlw	0
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlw	080h
	andwf	((c:printEsic@data+1)),c,w
	movlb	0	; () banked
	movwf	1+((printEsic@temp))&0ffh
	movlw	07Fh
	andwf	((c:printEsic@data+2)),c,w
	movlb	0	; () banked
	movwf	2+((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+3)),c,w
	movlb	0	; () banked
	movwf	3+((printEsic@temp))&0ffh
	line	114
	
l4370:
;rf_rx.h: 114: humidity = temp >> 15;
	movlb	0	; () banked
	movff	(printEsic@temp),??_printEsic+0+0
	movlb	0	; () banked
	movff	(printEsic@temp+1),??_printEsic+0+0+1
	movlb	0	; () banked
	movff	(printEsic@temp+2),??_printEsic+0+0+2
	movlb	0	; () banked
	movff	(printEsic@temp+3),??_printEsic+0+0+3
	movlw	0Fh+1
	goto	u5520
u5525:
	bcf	status,0
	rrcf	(??_printEsic+0+3),c
	rrcf	(??_printEsic+0+2),c
	rrcf	(??_printEsic+0+1),c
	rrcf	(??_printEsic+0+0),c
u5520:
	decfsz	wreg
	goto	u5525
	movf	(??_printEsic+0+0),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@humidity))&0ffh
	line	116
	
l4372:
;rf_rx.h: 116: temp = data & 0b00000000000000000111111111110000;
	movlw	0F0h
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlw	07Fh
	andwf	((c:printEsic@data+1)),c,w
	movlb	0	; () banked
	movwf	1+((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+2)),c,w
	movlb	0	; () banked
	movwf	2+((printEsic@temp))&0ffh
	movlw	0
	andwf	((c:printEsic@data+3)),c,w
	movlb	0	; () banked
	movwf	3+((printEsic@temp))&0ffh
	line	117
	
l4374:
;rf_rx.h: 117: temperature = temp >> 4;
	movlb	0	; () banked
	movff	(printEsic@temp),??_printEsic+0+0
	movlb	0	; () banked
	movff	(printEsic@temp+1),??_printEsic+0+0+1
	movlb	0	; () banked
	movff	(printEsic@temp+2),??_printEsic+0+0+2
	movlb	0	; () banked
	movff	(printEsic@temp+3),??_printEsic+0+0+3
	movlw	04h+1
	goto	u5530
u5535:
	bcf	status,0
	rrcf	(??_printEsic+0+3),c
	rrcf	(??_printEsic+0+2),c
	rrcf	(??_printEsic+0+1),c
	rrcf	(??_printEsic+0+0),c
u5530:
	decfsz	wreg
	goto	u5535
	movff	??_printEsic+0+0,(printEsic@temperature)
	movff	??_printEsic+0+1,(printEsic@temperature+1)
	movff	??_printEsic+0+2,(printEsic@temperature+2)
	movff	??_printEsic+0+3,(printEsic@temperature+3)
	line	118
	
l4376:
;rf_rx.h: 118: temperature = ((temperature-800)*10) / 16;
	movlw	low(0Ah)
	movwf	(0+((c:?___lmul)+04h)),c
	movlw	high(0Ah)
	movwf	(1+((c:?___lmul)+04h)),c
	movlw	low highword(0Ah)
	movwf	(2+((c:?___lmul)+04h)),c
	movlw	high highword(0Ah)
	movwf	(3+((c:?___lmul)+04h)),c
	movlw	0E0h
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((printEsic@temperature))&0ffh,w
	movwf	((c:?___lmul)),c
	movlw	0FCh
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((printEsic@temperature+1))&0ffh,w
	movwf	1+((c:?___lmul)),c
	movlw	0FFh
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((printEsic@temperature+2))&0ffh,w
	movwf	2+((c:?___lmul)),c
	movlw	0FFh
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((printEsic@temperature+3))&0ffh,w
	movwf	3+((c:?___lmul)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:?___aldiv)
	movff	1+?___lmul,(c:?___aldiv+1)
	movff	2+?___lmul,(c:?___aldiv+2)
	movff	3+?___lmul,(c:?___aldiv+3)
	movlw	low(010h)
	movwf	(0+((c:?___aldiv)+04h)),c
	movlw	high(010h)
	movwf	(1+((c:?___aldiv)+04h)),c
	movlw	low highword(010h)
	movwf	(2+((c:?___aldiv)+04h)),c
	movlw	high highword(010h)
	movwf	(3+((c:?___aldiv)+04h)),c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(printEsic@temperature)
	movff	1+?___aldiv,(printEsic@temperature+1)
	movff	2+?___aldiv,(printEsic@temperature+2)
	movff	3+?___aldiv,(printEsic@temperature+3)
	line	120
	
l4378:
;rf_rx.h: 120: temp = data & 0b00000000000000000000000000001100;
	movlw	0Ch
	andwf	((c:printEsic@data)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((printEsic@temp))&0ffh
	movlb	0	; () banked
	movlw	0
	andwf	((c:printEsic@data+1)),c,w
	movwf	1+((printEsic@temp))&0ffh
	movlb	0	; () banked
	movlw	0
	andwf	((c:printEsic@data+2)),c,w
	movwf	2+((printEsic@temp))&0ffh
	movlb	0	; () banked
	movlw	0
	andwf	((c:printEsic@data+3)),c,w
	movwf	3+((printEsic@temp))&0ffh
	line	121
	
l4380:
;rf_rx.h: 121: temp >>= 2;
	movlw	02h
	movwf	(??_printEsic+0+0)&0ffh,c
u5545:
	bcf	status,0
	movlb	0	; () banked
	movlb	0	; () banked
	rrcf	((printEsic@temp+3))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+2))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp+1))&0ffh
	movlb	0	; () banked
	rrcf	((printEsic@temp))&0ffh
	decfsz	(??_printEsic+0+0)&0ffh,c
	goto	u5545

	line	122
	
l4382:
;rf_rx.h: 122: packetcount = temp;
	movff	(printEsic@temp),(printEsic@packetcount)
	line	124
	
l4384:
;rf_rx.h: 124: sPuts("$E");
	movlw	high(STR_5)
	movwf	((c:?_sPuts+1)),c
	movlw	low(STR_5)
	movwf	((c:?_sPuts)),c
	call	_sPuts	;wreg free
	line	125
	
l4386:
;rf_rx.h: 125: sPutint(house); sPut(',');
	movlb	0	; () banked
	movff	(printEsic@house),(c:?_sPutint)
	clrf	((c:?_sPutint+1)),c
	call	_sPutint	;wreg free
	
l4388:
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(02Ch)
	movwf	((c:?_sPut)),c
	movf	(??_printEsic+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	126
	
l4390:
;rf_rx.h: 126: sPutint(channel); sPut(',');
	movlb	0	; () banked
	movff	(printEsic@channel),(c:?_sPutint)
	clrf	((c:?_sPutint+1)),c
	call	_sPutint	;wreg free
	
l4392:
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(02Ch)
	movwf	((c:?_sPut)),c
	movf	(??_printEsic+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	128
	
l4394:
;rf_rx.h: 128: if(temperature < 0){
	movlb	0	; () banked
	movlb	0	; () banked
	btfss	((printEsic@temperature+3))&0ffh,7
	goto	u5551
	goto	u5550
u5551:
	goto	l4400
u5550:
	line	129
	
l4396:
;rf_rx.h: 129: sPut('-');
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(02Dh)
	movwf	((c:?_sPut)),c
	movf	(??_printEsic+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	130
	
l4398:
;rf_rx.h: 130: temperature *= -1;
	movff	(printEsic@temperature),(c:?___lmul)
	movff	(printEsic@temperature+1),(c:?___lmul+1)
	movff	(printEsic@temperature+2),(c:?___lmul+2)
	movff	(printEsic@temperature+3),(c:?___lmul+3)
	movlw	low(-1)
	movwf	(0+((c:?___lmul)+04h)),c
	movlw	high(-1)
	movwf	(1+((c:?___lmul)+04h)),c
	movlw	low highword(-1)
	movwf	(2+((c:?___lmul)+04h)),c
	movlw	high highword(-1)
	movwf	(3+((c:?___lmul)+04h)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(printEsic@temperature)
	movff	1+?___lmul,(printEsic@temperature+1)
	movff	2+?___lmul,(printEsic@temperature+2)
	movff	3+?___lmul,(printEsic@temperature+3)
	goto	l4400
	line	131
	
l204:
	line	133
	
l4400:
;rf_rx.h: 131: }
;rf_rx.h: 133: sPutint(temperature/10); sPut('.'); sPutint(temperature%10); sPut(',');
	movff	(printEsic@temperature),(c:?___aldiv)
	movff	(printEsic@temperature+1),(c:?___aldiv+1)
	movff	(printEsic@temperature+2),(c:?___aldiv+2)
	movff	(printEsic@temperature+3),(c:?___aldiv+3)
	movlw	low(0Ah)
	movwf	(0+((c:?___aldiv)+04h)),c
	movlw	high(0Ah)
	movwf	(1+((c:?___aldiv)+04h)),c
	movlw	low highword(0Ah)
	movwf	(2+((c:?___aldiv)+04h)),c
	movlw	high highword(0Ah)
	movwf	(3+((c:?___aldiv)+04h)),c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:?_sPutint)
	movff	1+?___aldiv,(c:?_sPutint+1)
	call	_sPutint	;wreg free
	
l4402:
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(02Eh)
	movwf	((c:?_sPut)),c
	movf	(??_printEsic+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	
l4404:
	movff	(printEsic@temperature),(c:?___almod)
	movff	(printEsic@temperature+1),(c:?___almod+1)
	movff	(printEsic@temperature+2),(c:?___almod+2)
	movff	(printEsic@temperature+3),(c:?___almod+3)
	movlw	low(0Ah)
	movwf	(0+((c:?___almod)+04h)),c
	movlw	high(0Ah)
	movwf	(1+((c:?___almod)+04h)),c
	movlw	low highword(0Ah)
	movwf	(2+((c:?___almod)+04h)),c
	movlw	high highword(0Ah)
	movwf	(3+((c:?___almod)+04h)),c
	call	___almod	;wreg free
	movff	0+?___almod,(c:?_sPutint)
	movff	1+?___almod,(c:?_sPutint+1)
	call	_sPutint	;wreg free
	
l4406:
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(02Ch)
	movwf	((c:?_sPut)),c
	movf	(??_printEsic+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	134
	
l4408:
;rf_rx.h: 134: sPutint(humidity/2); sPut(',');
	movlb	0	; () banked
	movff	(printEsic@humidity),(c:?___awdiv)
	clrf	((c:?___awdiv+1)),c
	movlw	high(02h)
	movwf	(1+((c:?___awdiv)+02h)),c
	movlw	low(02h)
	movwf	(0+((c:?___awdiv)+02h)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:?_sPutint)
	movff	1+?___awdiv,(c:?_sPutint+1)
	call	_sPutint	;wreg free
	
l4410:
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(02Ch)
	movwf	((c:?_sPut)),c
	movf	(??_printEsic+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	135
	
l4412:
;rf_rx.h: 135: sPut(lowbatt + '0');
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((printEsic@lowbatt))&0ffh,w
	addlw	low(030h)
	movwf	((c:?_sPut)),c
	call	_sPut	;wreg free
	line	136
	
l4414:
;rf_rx.h: 136: sPut(10);
	movwf	(??_printEsic+0+0)&0ffh,c
	movlw	low(0Ah)
	movwf	((c:?_sPut)),c
	movf	(??_printEsic+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	137
	
l4416:
;rf_rx.h: 137: blinkRxLed();
	call	_blinkRxLed	;wreg free
	goto	l205
	line	138
	
l203:
	line	139
	
l205:
	return
	opt stack 0
GLOBAL	__end_of_printEsic
	__end_of_printEsic:
	signat	_printEsic,4216
	global	_sPutint
	global	_printDoro

;; *************** function _printDoro *****************
;; Defined at:
;;		line 141 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
;; Parameters:    Size  Location     Type
;;  data            2   17[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               1   22[COMRAM] unsigned char 
;;  number          2   20[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sPuts
;;		_sPutonehex
;;		_sPut
;;		_blinkRxLed
;; This function is called by:
;;		_rfReceive
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
global __ptext7
__ptext7:
psect	text7
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_rx.h"
	line	141
	global	__size_of_printDoro
	__size_of_printDoro	equ	__end_of_printDoro-_printDoro
	
_printDoro:
	opt	stack 27
	line	142
	
l4418:
;rf_rx.h: 142: sPuts("$D");
	movlw	high(STR_6)
	movwf	((c:?_sPuts+1)),c
	movlw	low(STR_6)
	movwf	((c:?_sPuts)),c
	call	_sPuts	;wreg free
	line	144
	
l4420:
;rf_rx.h: 143: unsigned int number;
;rf_rx.h: 144: for (char j = 0; j < 3; j++){
	movwf	(??_printDoro+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:printDoro@j)),c
	movf	(??_printDoro+0+0)&0ffh,c,w
	
l4422:
	movlw	(03h-1)
	cpfsgt	((c:printDoro@j)),c
	goto	u5561
	goto	u5560
u5561:
	goto	l4426
u5560:
	goto	l4436
	
l4424:
	goto	l4436
	
l208:
	line	145
	
l4426:
;rf_rx.h: 145: number = data & 0b0000111100000000;
	movlw	0
	andwf	((c:printDoro@data)),c,w
	
	movwf	((c:printDoro@number)),c
	movlw	0Fh
	andwf	((c:printDoro@data+1)),c,w
	movwf	1+((c:printDoro@number)),c
	line	146
;rf_rx.h: 146: data <<= 4;
	swapf	((c:printDoro@data)),c
	swapf	((c:printDoro@data+1)),c
	movlw	0f0h
	andwf	((c:printDoro@data+1)),c
	movf	((c:printDoro@data)),c,w
	andlw	0fh
	iorwf	((c:printDoro@data+1)),c
	movlw	0f0h
	andwf	((c:printDoro@data)),c
	line	147
	
l4428:
;rf_rx.h: 147: number >>= 8;
	movf	((c:printDoro@number+1)),c,w
	movwf	((c:printDoro@number)),c
	clrf	((c:printDoro@number+1)),c
	line	148
	
l4430:
;rf_rx.h: 148: sPutonehex(number);
	movff	(c:printDoro@number),(c:?_sPutonehex)
	call	_sPutonehex	;wreg free
	line	144
	
l4432:
	incf	((c:printDoro@j)),c
	
l4434:
	movlw	(03h-1)
	cpfsgt	((c:printDoro@j)),c
	goto	u5571
	goto	u5570
u5571:
	goto	l4426
u5570:
	goto	l4436
	
l209:
	line	150
	
l4436:
;rf_rx.h: 149: }
;rf_rx.h: 150: sPut(10);
	movwf	(??_printDoro+0+0)&0ffh,c
	movlw	low(0Ah)
	movwf	((c:?_sPut)),c
	movf	(??_printDoro+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	151
	
l4438:
;rf_rx.h: 151: blinkRxLed();
	call	_blinkRxLed	;wreg free
	line	152
	
l210:
	return
	opt stack 0
GLOBAL	__end_of_printDoro
	__end_of_printDoro:
	signat	_printDoro,4216
	global	_blinkRxLed

;; *************** function _blinkRxLed *****************
;; Defined at:
;;		line 63 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printNexa
;;		_printGao
;;		_printEsic
;;		_printDoro
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
global __ptext8
__ptext8:
psect	text8
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	63
	global	__size_of_blinkRxLed
	__size_of_blinkRxLed	equ	__end_of_blinkRxLed-_blinkRxLed
	
_blinkRxLed:
	opt	stack 27
	line	64
	
l4276:
;batchpcb26k20.c: 64: LATC5 = 1;
	bsf	c:(31837/8),(31837)&7	;volatile
	line	65
	
l4278:
;batchpcb26k20.c: 65: TMR3H = 0; TMR3L = 0;
	movlw	low(0)
	movwf	((c:4019)),c	;volatile
	movlw	low(0)
	movwf	((c:4018)),c	;volatile
	line	66
	
l4280:
;batchpcb26k20.c: 66: TMR3ON = 1;
	bsf	c:(32136/8),(32136)&7	;volatile
	line	67
	
l135:
	return
	opt stack 0
GLOBAL	__end_of_blinkRxLed
	__end_of_blinkRxLed:
	signat	_blinkRxLed,88
	global	_sPutonehex
	global	_parseCmd

;; *************** function _parseCmd *****************
;; Defined at:
;;		line 77 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;  s               2   32[COMRAM] PTR unsigned char 
;;		 -> main@linebuffer(32), 
;; Auto vars:     Size  Location     Type
;;  j               1   47[COMRAM] unsigned char 
;;  j               1   46[COMRAM] unsigned char 
;;  j               1   45[COMRAM] unsigned char 
;;  j               1   44[COMRAM] unsigned char 
;;  tx_data         4   48[COMRAM] unsigned long 
;;  tx_data_int     2   41[COMRAM] unsigned int 
;;  temp            1   43[COMRAM] unsigned char 
;;  nexa_dimming    1   40[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        20       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_asciiToHex
;;		_startTransmit
;;		_gaoTx
;;		_stopTransmit
;;		_reverse
;;		_wavemanTx
;;		_nexaTx
;;		_pingResponse
;;		_delayms
;;		_kangthaiTx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
global __ptext9
__ptext9:
psect	text9
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	77
	global	__size_of_parseCmd
	__size_of_parseCmd	equ	__end_of_parseCmd-_parseCmd
	
_parseCmd:
	opt	stack 27
	line	83
	
l3914:
;batchpcb26k20.c: 78: unsigned long tx_data;
;batchpcb26k20.c: 79: unsigned int tx_data_int;
;batchpcb26k20.c: 80: char nexa_dimming;
;batchpcb26k20.c: 81: char temp;
;batchpcb26k20.c: 83: if (s[0] == 'G'){
	movlw	(047h)&0ffh
	movff	(c:parseCmd@s),fsr2l
	movff	(c:parseCmd@s+1),fsr2h
	cpfseq	indf2
	goto	u4771
	goto	u4770
u4771:
	goto	l3944
u4770:
	line	84
	
l3916:
;batchpcb26k20.c: 84: tx_data = 0;
	movlw	low(0)
	movwf	((c:parseCmd@tx_data)),c
	movlw	high(0)
	movwf	((c:parseCmd@tx_data+1)),c
	movlw	low highword(0)
	movwf	((c:parseCmd@tx_data+2)),c
	movlw	high highword(0)
	movwf	((c:parseCmd@tx_data+3)),c
	line	85
	
l3918:
;batchpcb26k20.c: 85: for (char j=1; j<6; j++){
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:parseCmd@j)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	movlw	(06h-1)
	cpfsgt	((c:parseCmd@j)),c
	goto	u4781
	goto	u4780
u4781:
	goto	l3922
u4780:
	goto	l3930
	
l3920:
	goto	l3930
	
l354:
	line	86
	
l3922:
;batchpcb26k20.c: 86: tx_data |= asciiToHex(s[j]);
	movf	((c:parseCmd@j)),c,w
	mullw	01h
	movf	(prodl),c,w
	addwf	((c:parseCmd@s)),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	((c:parseCmd@s+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:?_asciiToHex)),c
	call	_asciiToHex	;wreg free
	movwf	(??_parseCmd+0+0)&0ffh,c
	movf	((??_parseCmd+0+0)),c,w
	iorwf	((c:parseCmd@tx_data)),c
	line	87
	
l3924:
;batchpcb26k20.c: 87: tx_data <<= 4;
	movlw	04h
u4795:
	bcf	status,0
	rlcf	((c:parseCmd@tx_data)),c
	rlcf	((c:parseCmd@tx_data+1)),c
	rlcf	((c:parseCmd@tx_data+2)),c
	rlcf	((c:parseCmd@tx_data+3)),c
	decfsz	wreg
	goto	u4795
	line	85
	
l3926:
	incf	((c:parseCmd@j)),c
	
l3928:
	movlw	(06h-1)
	cpfsgt	((c:parseCmd@j)),c
	goto	u4801
	goto	u4800
u4801:
	goto	l3922
u4800:
	goto	l3930
	
l355:
	line	89
	
l3930:
;batchpcb26k20.c: 88: }
;batchpcb26k20.c: 89: if((s[6] - '0') == 1) tx_data |= 0xF;
	lfsr	2,06h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0FFD0h)
	addwf	((??_parseCmd+0+0)),c,w
	movwf	(??_parseCmd+1+0)&0ffh,c
	clrf	1+(??_parseCmd+1+0)&0ffh,c
	movlw	high(0FFD0h)
	addwfc	1+(??_parseCmd+1+0)&0ffh,c
	decf	(??_parseCmd+1+0),c,w
	iorwf (??_parseCmd+1+1),c,w

	btfss	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l3934
u4810:
	
l3932:
	movlw	0Fh
	iorwf	((c:parseCmd@tx_data)),c
	movlw	0
	iorwf	((c:parseCmd@tx_data+1)),c
	movlw	0
	iorwf	((c:parseCmd@tx_data+2)),c
	movlw	0
	iorwf	((c:parseCmd@tx_data+3)),c
	goto	l3934
	
l356:
	line	90
	
l3934:
;batchpcb26k20.c: 90: if((s[6] - '0') == 2) tx_data |= 0xA;
	lfsr	2,06h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0FFD0h)
	addwf	((??_parseCmd+0+0)),c,w
	movwf	(??_parseCmd+1+0)&0ffh,c
	clrf	1+(??_parseCmd+1+0)&0ffh,c
	movlw	high(0FFD0h)
	addwfc	1+(??_parseCmd+1+0)&0ffh,c
	movf	(??_parseCmd+1+0),c,w
	xorlw	2
	iorwf (??_parseCmd+1+1),c,w

	btfss	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l3938
u4820:
	
l3936:
	movlw	0Ah
	iorwf	((c:parseCmd@tx_data)),c
	movlw	0
	iorwf	((c:parseCmd@tx_data+1)),c
	movlw	0
	iorwf	((c:parseCmd@tx_data+2)),c
	movlw	0
	iorwf	((c:parseCmd@tx_data+3)),c
	goto	l3938
	
l357:
	line	91
	
l3938:
;batchpcb26k20.c: 91: startTransmit();
	call	_startTransmit	;wreg free
	line	92
	
l3940:
;batchpcb26k20.c: 92: gaoTx(tx_data, 6);
	movff	(c:parseCmd@tx_data),(c:?_gaoTx)
	movff	(c:parseCmd@tx_data+1),(c:?_gaoTx+1)
	movff	(c:parseCmd@tx_data+2),(c:?_gaoTx+2)
	movff	(c:parseCmd@tx_data+3),(c:?_gaoTx+3)
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(06h)
	movwf	(0+((c:?_gaoTx)+04h)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	call	_gaoTx	;wreg free
	line	93
	
l3942:
;batchpcb26k20.c: 93: stopTransmit();
	call	_stopTransmit	;wreg free
	line	94
;batchpcb26k20.c: 94: }
	goto	l4030
	line	95
	
l353:
	
l3944:
;batchpcb26k20.c: 95: else if(s[0] == 'W'){
	movlw	(057h)&0ffh
	movff	(c:parseCmd@s),fsr2l
	movff	(c:parseCmd@s+1),fsr2h
	cpfseq	indf2
	goto	u4831
	goto	u4830
u4831:
	goto	l3972
u4830:
	line	96
	
l3946:
;batchpcb26k20.c: 96: tx_data_int = reverse(s[1] - 65);
	lfsr	2,01h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	addlw	low(0BFh)
	movwf	((c:?_reverse)),c
	call	_reverse	;wreg free
	movwf	(??_parseCmd+0+0)&0ffh,c
	movf	((??_parseCmd+0+0)),c,w
	movwf	((c:parseCmd@tx_data_int)),c
	clrf	((c:parseCmd@tx_data_int+1)),c
	line	97
	
l3948:
;batchpcb26k20.c: 97: tx_data_int <<= 8;
	movf	((c:parseCmd@tx_data_int)),c,w
	movwf	((c:parseCmd@tx_data_int+1)),c
	clrf	((c:parseCmd@tx_data_int)),c
	line	98
	
l3950:
;batchpcb26k20.c: 98: temp = (s[2] - '0') * 10;
	lfsr	2,02h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	addlw	low(0D0h)
	mullw	0Ah
	movff	prodl,(c:parseCmd@temp)
	line	99
	
l3952:
;batchpcb26k20.c: 99: temp += (s[3] - '0');
	lfsr	2,03h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	addlw	low(0D0h)
	addwf	((c:parseCmd@temp)),c
	line	100
	
l3954:
;batchpcb26k20.c: 100: temp--;
	decf	((c:parseCmd@temp)),c
	line	101
	
l3956:
;batchpcb26k20.c: 101: temp = reverse(temp);
	movff	(c:parseCmd@temp),(c:?_reverse)
	call	_reverse	;wreg free
	movwf	((c:parseCmd@temp)),c
	line	102
	
l3958:
;batchpcb26k20.c: 102: temp <<= 4;
	swapf	((c:parseCmd@temp)),c
	movlw	240
	andwf	((c:parseCmd@temp)),c

	line	103
	
l3960:
;batchpcb26k20.c: 103: tx_data_int += temp;
	movf	((c:parseCmd@temp)),c,w
	addwf	((c:parseCmd@tx_data_int)),c
	movlw	0
	addwfc	((c:parseCmd@tx_data_int+1)),c
	line	104
	
l3962:
;batchpcb26k20.c: 104: if (s[4] - '0') tx_data_int |= 0b0000000000000111;
	lfsr	2,04h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0FFD0h)
	addwf	((??_parseCmd+0+0)),c,w
	movwf	(??_parseCmd+1+0)&0ffh,c
	clrf	1+(??_parseCmd+1+0)&0ffh,c
	movlw	high(0FFD0h)
	addwfc	1+(??_parseCmd+1+0)&0ffh,c
	movf	(??_parseCmd+1+1),c,w
	iorwf (??_parseCmd+1+0),c,w

	btfsc	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l3966
u4840:
	
l3964:
	movlw	07h
	iorwf	((c:parseCmd@tx_data_int)),c
	goto	l3966
	
l360:
	line	105
	
l3966:
;batchpcb26k20.c: 105: startTransmit();
	call	_startTransmit	;wreg free
	line	106
	
l3968:
;batchpcb26k20.c: 106: wavemanTx(tx_data_int, 8);
	movff	(c:parseCmd@tx_data_int),(c:?_wavemanTx)
	movff	(c:parseCmd@tx_data_int+1),(c:?_wavemanTx+1)
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(08h)
	movwf	(0+((c:?_wavemanTx)+02h)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	call	_wavemanTx	;wreg free
	line	107
	
l3970:
;batchpcb26k20.c: 107: stopTransmit();
	call	_stopTransmit	;wreg free
	line	108
;batchpcb26k20.c: 108: }
	goto	l4030
	line	109
	
l359:
	
l3972:
;batchpcb26k20.c: 109: else if (s[0] == 'N'){
	movlw	(04Eh)&0ffh
	movff	(c:parseCmd@s),fsr2l
	movff	(c:parseCmd@s+1),fsr2h
	cpfseq	indf2
	goto	u4851
	goto	u4850
u4851:
	goto	l4014
u4850:
	line	110
	
l3974:
;batchpcb26k20.c: 110: tx_data = 0;
	movlw	low(0)
	movwf	((c:parseCmd@tx_data)),c
	movlw	high(0)
	movwf	((c:parseCmd@tx_data+1)),c
	movlw	low highword(0)
	movwf	((c:parseCmd@tx_data+2)),c
	movlw	high highword(0)
	movwf	((c:parseCmd@tx_data+3)),c
	line	111
	
l3976:
;batchpcb26k20.c: 111: for (char j=1; j<7; j++){
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:parseCmd@j_284)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	movlw	(07h-1)
	cpfsgt	((c:parseCmd@j_284)),c
	goto	u4861
	goto	u4860
u4861:
	goto	l3980
u4860:
	goto	l3988
	
l3978:
	goto	l3988
	
l363:
	line	112
	
l3980:
;batchpcb26k20.c: 112: tx_data |= asciiToHex(s[j]);
	movf	((c:parseCmd@j_284)),c,w
	mullw	01h
	movf	(prodl),c,w
	addwf	((c:parseCmd@s)),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	((c:parseCmd@s+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:?_asciiToHex)),c
	call	_asciiToHex	;wreg free
	movwf	(??_parseCmd+0+0)&0ffh,c
	movf	((??_parseCmd+0+0)),c,w
	iorwf	((c:parseCmd@tx_data)),c
	line	113
	
l3982:
;batchpcb26k20.c: 113: tx_data <<= 4;
	movlw	04h
u4875:
	bcf	status,0
	rlcf	((c:parseCmd@tx_data)),c
	rlcf	((c:parseCmd@tx_data+1)),c
	rlcf	((c:parseCmd@tx_data+2)),c
	rlcf	((c:parseCmd@tx_data+3)),c
	decfsz	wreg
	goto	u4875
	line	111
	
l3984:
	incf	((c:parseCmd@j_284)),c
	
l3986:
	movlw	(07h-1)
	cpfsgt	((c:parseCmd@j_284)),c
	goto	u4881
	goto	u4880
u4881:
	goto	l3980
u4880:
	goto	l3988
	
l364:
	line	115
	
l3988:
;batchpcb26k20.c: 114: }
;batchpcb26k20.c: 115: tx_data <<= 4;
	movlw	04h
u4895:
	bcf	status,0
	rlcf	((c:parseCmd@tx_data)),c
	rlcf	((c:parseCmd@tx_data+1)),c
	rlcf	((c:parseCmd@tx_data+2)),c
	rlcf	((c:parseCmd@tx_data+3)),c
	decfsz	wreg
	goto	u4895
	line	116
	
l3990:
;batchpcb26k20.c: 116: tx_data |= (s[7] - '0') << 6;
	lfsr	2,07h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_parseCmd+0+0)&0ffh,c
	clrf	(??_parseCmd+0+0+1)&0ffh,c

	movlw	06h
u4905:
	bcf	status,0
	rlcf	(??_parseCmd+0+0),c
	rlcf	(??_parseCmd+0+1),c
	decfsz	wreg
	goto	u4905
	movlw	low(0F400h)
	addwf	(??_parseCmd+0+0),c,w
	movwf	(??_parseCmd+2+0)&0ffh,c
	movlw	high(0F400h)
	addwfc	(??_parseCmd+0+1),c,w
	movwf	1+(??_parseCmd+2+0)&0ffh,c
	
	clrf	2+(??_parseCmd+2+0)&0ffh,c
	
	clrf	3+(??_parseCmd+2+0)&0ffh,c
	movf	(??_parseCmd+2+0),c,w
	iorwf	((c:parseCmd@tx_data)),c
	movf	(??_parseCmd+2+1),c,w
	iorwf	((c:parseCmd@tx_data+1)),c
	movf	(??_parseCmd+2+2),c,w
	iorwf	((c:parseCmd@tx_data+2)),c
	movf	(??_parseCmd+2+3),c,w
	iorwf	((c:parseCmd@tx_data+3)),c

	line	117
	
l3992:
;batchpcb26k20.c: 117: if (s[8] - '0') tx_data |= 0b00100000;
	lfsr	2,08h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0FFD0h)
	addwf	((??_parseCmd+0+0)),c,w
	movwf	(??_parseCmd+1+0)&0ffh,c
	clrf	1+(??_parseCmd+1+0)&0ffh,c
	movlw	high(0FFD0h)
	addwfc	1+(??_parseCmd+1+0)&0ffh,c
	movf	(??_parseCmd+1+1),c,w
	iorwf (??_parseCmd+1+0),c,w

	btfsc	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l3996
u4910:
	
l3994:
	bsf	(0+(5/8)+(c:parseCmd@tx_data)),c,(5)&7
	goto	l3996
	
l365:
	line	118
	
l3996:
;batchpcb26k20.c: 118: tx_data |= asciiToHex(s[9]);
	lfsr	2,09h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:?_asciiToHex)),c
	call	_asciiToHex	;wreg free
	movwf	(??_parseCmd+0+0)&0ffh,c
	movf	((??_parseCmd+0+0)),c,w
	iorwf	((c:parseCmd@tx_data)),c
	line	119
	
l3998:
;batchpcb26k20.c: 119: if (s[10] == '1'){tx_data |= 0b00010000;}
	lfsr	2,0Ah
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movlw	(031h)&0ffh
	cpfseq	indf2
	goto	u4921
	goto	u4920
u4921:
	goto	l4002
u4920:
	
l4000:
	bsf	(0+(4/8)+(c:parseCmd@tx_data)),c,(4)&7
	goto	l4002
	
l366:
	line	120
	
l4002:
;batchpcb26k20.c: 120: if (s[10] == '2') nexa_dimming = asciiToHex(s[11]);
	lfsr	2,0Ah
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movlw	(032h)&0ffh
	cpfseq	indf2
	goto	u4931
	goto	u4930
u4931:
	goto	l4006
u4930:
	
l4004:
	lfsr	2,0Bh
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:?_asciiToHex)),c
	call	_asciiToHex	;wreg free
	movwf	((c:parseCmd@nexa_dimming)),c
	goto	l4008
	line	121
	
l367:
	
l4006:
;batchpcb26k20.c: 121: else nexa_dimming = 0;
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:parseCmd@nexa_dimming)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	goto	l4008
	
l368:
	line	122
	
l4008:
;batchpcb26k20.c: 122: startTransmit();
	call	_startTransmit	;wreg free
	line	123
	
l4010:
;batchpcb26k20.c: 123: nexaTx(tx_data, nexa_dimming, 5);
	movff	(c:parseCmd@tx_data),(c:?_nexaTx)
	movff	(c:parseCmd@tx_data+1),(c:?_nexaTx+1)
	movff	(c:parseCmd@tx_data+2),(c:?_nexaTx+2)
	movff	(c:parseCmd@tx_data+3),(c:?_nexaTx+3)
	movff	(c:parseCmd@nexa_dimming),0+((c:?_nexaTx)+04h)
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(05h)
	movwf	(0+((c:?_nexaTx)+05h)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	call	_nexaTx	;wreg free
	line	124
	
l4012:
;batchpcb26k20.c: 124: stopTransmit();
	call	_stopTransmit	;wreg free
	line	125
;batchpcb26k20.c: 125: }
	goto	l4030
	line	126
	
l362:
	
l4014:
;batchpcb26k20.c: 126: else if(s[0] == 'P') pingResponse();
	movlw	(050h)&0ffh
	movff	(c:parseCmd@s),fsr2l
	movff	(c:parseCmd@s+1),fsr2h
	cpfseq	indf2
	goto	u4941
	goto	u4940
u4941:
	goto	l4018
u4940:
	
l4016:
	call	_pingResponse	;wreg free
	goto	l4030
	line	127
	
l370:
	
l4018:
;batchpcb26k20.c: 127: else if(s[0] == 'X') asm(" reset");
	movlw	(058h)&0ffh
	movff	(c:parseCmd@s),fsr2l
	movff	(c:parseCmd@s+1),fsr2h
	cpfseq	indf2
	goto	u4951
	goto	u4950
u4951:
	goto	l4022
u4950:
	
l4020:
# 127 "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
reset ;# 
psect	text9
	goto	l4030
	line	128
	
l372:
	
l4022:
;batchpcb26k20.c: 128: else if(s[0] == '!'){
	movlw	(021h)&0ffh
	movff	(c:parseCmd@s),fsr2l
	movff	(c:parseCmd@s+1),fsr2h
	cpfseq	indf2
	goto	u4961
	goto	u4960
u4961:
	goto	l4030
u4960:
	line	129
	
l4024:
;batchpcb26k20.c: 129: startTransmit();
	call	_startTransmit	;wreg free
	line	130
	
l4026:
;batchpcb26k20.c: 130: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	131
;batchpcb26k20.c: 131: delayms(5000);
	movlw	high(01388h)
	movwf	((c:?_delayms+1)),c
	movlw	low(01388h)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	132
	
l4028:
;batchpcb26k20.c: 132: stopTransmit();
	call	_stopTransmit	;wreg free
	goto	l4030
	line	133
	
l374:
	goto	l4030
	line	134
	
l373:
	goto	l4030
	
l371:
	goto	l4030
	
l369:
	goto	l4030
	
l361:
	goto	l4030
	
l358:
	
l4030:
;batchpcb26k20.c: 133: }
;batchpcb26k20.c: 134: if (s[0] == 'K'){
	movlw	(04Bh)&0ffh
	movff	(c:parseCmd@s),fsr2l
	movff	(c:parseCmd@s+1),fsr2h
	cpfseq	indf2
	goto	u4971
	goto	u4970
u4971:
	goto	l383
u4970:
	line	135
	
l4032:
;batchpcb26k20.c: 135: tx_data = 0;
	movlw	low(0)
	movwf	((c:parseCmd@tx_data)),c
	movlw	high(0)
	movwf	((c:parseCmd@tx_data+1)),c
	movlw	low highword(0)
	movwf	((c:parseCmd@tx_data+2)),c
	movlw	high highword(0)
	movwf	((c:parseCmd@tx_data+3)),c
	line	136
	
l4034:
;batchpcb26k20.c: 136: for (char j=1; j<6; j++){
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:parseCmd@j_285)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	movlw	(06h-1)
	cpfsgt	((c:parseCmd@j_285)),c
	goto	u4981
	goto	u4980
u4981:
	goto	l4038
u4980:
	goto	l4046
	
l4036:
	goto	l4046
	
l376:
	line	137
	
l4038:
;batchpcb26k20.c: 137: tx_data |= s[j] - '0';
	movf	((c:parseCmd@j_285)),c,w
	mullw	01h
	movf	(prodl),c,w
	addwf	((c:parseCmd@s)),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	((c:parseCmd@s+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0FFD0h)
	addwf	((??_parseCmd+0+0)),c,w
	movwf	(??_parseCmd+1+0)&0ffh,c
	clrf	1+(??_parseCmd+1+0)&0ffh,c
	movlw	high(0FFD0h)
	addwfc	1+(??_parseCmd+1+0)&0ffh,c
	
	clrf	2+(??_parseCmd+1+0)&0ffh,c
	
	clrf	3+(??_parseCmd+1+0)&0ffh,c
	movf	(??_parseCmd+1+0),c,w
	iorwf	((c:parseCmd@tx_data)),c
	movf	(??_parseCmd+1+1),c,w
	iorwf	((c:parseCmd@tx_data+1)),c
	movf	(??_parseCmd+1+2),c,w
	iorwf	((c:parseCmd@tx_data+2)),c
	movf	(??_parseCmd+1+3),c,w
	iorwf	((c:parseCmd@tx_data+3)),c

	line	138
	
l4040:
;batchpcb26k20.c: 138: tx_data <<= 1;
	bcf	status,0
	rlcf	((c:parseCmd@tx_data)),c
	rlcf	((c:parseCmd@tx_data+1)),c
	rlcf	((c:parseCmd@tx_data+2)),c
	rlcf	((c:parseCmd@tx_data+3)),c
	line	136
	
l4042:
	incf	((c:parseCmd@j_285)),c
	
l4044:
	movlw	(06h-1)
	cpfsgt	((c:parseCmd@j_285)),c
	goto	u4991
	goto	u4990
u4991:
	goto	l4038
u4990:
	goto	l4046
	
l377:
	line	140
	
l4046:
;batchpcb26k20.c: 139: }
;batchpcb26k20.c: 140: for (char j=0; j<5; j++){
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:parseCmd@j_286)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	
l4048:
	movlw	(05h-1)
	cpfsgt	((c:parseCmd@j_286)),c
	goto	u5001
	goto	u5000
u5001:
	goto	l4052
u5000:
	goto	l4058
	
l4050:
	goto	l4058
	
l378:
	line	141
	
l4052:
;batchpcb26k20.c: 141: if((s[7] - 'A') == j) tx_data |= 1;
	lfsr	2,07h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(0FFBFh)
	addwf	((??_parseCmd+0+0)),c,w
	movwf	(??_parseCmd+1+0)&0ffh,c
	clrf	1+(??_parseCmd+1+0)&0ffh,c
	movlw	high(0FFBFh)
	addwfc	1+(??_parseCmd+1+0)&0ffh,c
	movf	((c:parseCmd@j_286)),c,w
	xorwf	(??_parseCmd+1+0),c,w
	iorwf	(??_parseCmd+1+1),c,w

	btfss	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l380
u5010:
	
l4054:
	bsf	(0+(0/8)+(c:parseCmd@tx_data)),c,(0)&7
	
l380:
	line	142
;batchpcb26k20.c: 142: tx_data <<= 1;
	bcf	status,0
	rlcf	((c:parseCmd@tx_data)),c
	rlcf	((c:parseCmd@tx_data+1)),c
	rlcf	((c:parseCmd@tx_data+2)),c
	rlcf	((c:parseCmd@tx_data+3)),c
	line	140
	incf	((c:parseCmd@j_286)),c
	
l4056:
	movlw	(05h-1)
	cpfsgt	((c:parseCmd@j_286)),c
	goto	u5021
	goto	u5020
u5021:
	goto	l4052
u5020:
	goto	l4058
	
l379:
	line	144
	
l4058:
;batchpcb26k20.c: 143: }
;batchpcb26k20.c: 144: tx_data <<= 1;
	bcf	status,0
	rlcf	((c:parseCmd@tx_data)),c
	rlcf	((c:parseCmd@tx_data+1)),c
	rlcf	((c:parseCmd@tx_data+2)),c
	rlcf	((c:parseCmd@tx_data+3)),c
	line	145
	
l4060:
;batchpcb26k20.c: 145: if(s[7] == '1') tx_data |= 0b10;
	lfsr	2,07h
	movf	((c:parseCmd@s)),c,w
	addwf	fsr2l
	movf	((c:parseCmd@s+1)),c,w
	addwfc	fsr2h
	movlw	(031h)&0ffh
	cpfseq	indf2
	goto	u5031
	goto	u5030
u5031:
	goto	l4064
u5030:
	
l4062:
	bsf	(0+(1/8)+(c:parseCmd@tx_data)),c,(1)&7
	goto	l4066
	line	146
	
l381:
	
l4064:
;batchpcb26k20.c: 146: else tx_data |= 0b01;
	bsf	(0+(0/8)+(c:parseCmd@tx_data)),c,(0)&7
	goto	l4066
	
l382:
	line	147
	
l4066:
;batchpcb26k20.c: 147: startTransmit();
	call	_startTransmit	;wreg free
	line	148
	
l4068:
;batchpcb26k20.c: 148: kangthaiTx(tx_data, 6);
	movff	(c:parseCmd@tx_data),(c:?_kangthaiTx)
	movff	(c:parseCmd@tx_data+1),(c:?_kangthaiTx+1)
	movff	(c:parseCmd@tx_data+2),(c:?_kangthaiTx+2)
	movff	(c:parseCmd@tx_data+3),(c:?_kangthaiTx+3)
	movwf	(??_parseCmd+0+0)&0ffh,c
	movlw	low(06h)
	movwf	(0+((c:?_kangthaiTx)+04h)),c
	movf	(??_parseCmd+0+0)&0ffh,c,w
	call	_kangthaiTx	;wreg free
	line	149
	
l4070:
;batchpcb26k20.c: 149: stopTransmit();
	call	_stopTransmit	;wreg free
	goto	l383
	line	150
	
l375:
	line	151
	
l383:
	return
	opt stack 0
GLOBAL	__end_of_parseCmd
	__end_of_parseCmd:
	signat	_parseCmd,4216
	global	_asciiToHex

;; *************** function _asciiToHex *****************
;; Defined at:
;;		line 22 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;  ascii           1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
global __ptext10
__ptext10:
psect	text10
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	22
	global	__size_of_asciiToHex
	__size_of_asciiToHex	equ	__end_of_asciiToHex-_asciiToHex
	
_asciiToHex:
	opt	stack 28
	line	23
	
l3214:
;batchpcb26k20.c: 23: if(ascii <= '9') ascii -= '0';
	movlw	(03Ah)&0ffh
	cpfslt	((c:asciiToHex@ascii)),c
	goto	u3501
	goto	u3500
u3501:
	goto	l3218
u3500:
	
l3216:
	movlw	(030h)&0ffh
	subwf	((c:asciiToHex@ascii)),c
	goto	l3220
	line	24
	
l112:
	
l3218:
;batchpcb26k20.c: 24: else ascii -= 55;
	movlw	(037h)&0ffh
	subwf	((c:asciiToHex@ascii)),c
	goto	l3220
	
l113:
	line	25
	
l3220:
;batchpcb26k20.c: 25: return ascii;
	movf	((c:asciiToHex@ascii)),c,w
	goto	l114
	
l3222:
	line	26
	
l114:
	return
	opt stack 0
GLOBAL	__end_of_asciiToHex
	__end_of_asciiToHex:
	signat	_asciiToHex,4217
	global	_reverse

;; *************** function _reverse *****************
;; Defined at:
;;		line 28 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;  input           1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  output          1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
global __ptext11
__ptext11:
psect	text11
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	28
	global	__size_of_reverse
	__size_of_reverse	equ	__end_of_reverse-_reverse
	
_reverse:
	opt	stack 28
	line	29
	
l3224:
;batchpcb26k20.c: 29: char output = 0;
	movwf	(??_reverse+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:reverse@output)),c
	movf	(??_reverse+0+0)&0ffh,c,w
	line	30
	
l3226:
;batchpcb26k20.c: 30: if (input & 0b00000001) output |= 0b00001000;
	
	btfss	((c:reverse@input)),c,(0)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l3230
u3510:
	
l3228:
	bsf	(0+(3/8)+(c:reverse@output)),c,(3)&7
	goto	l3230
	
l117:
	line	31
	
l3230:
;batchpcb26k20.c: 31: if (input & 0b00000010) output |= 0b00000100;
	
	btfss	((c:reverse@input)),c,(1)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l3234
u3520:
	
l3232:
	bsf	(0+(2/8)+(c:reverse@output)),c,(2)&7
	goto	l3234
	
l118:
	line	32
	
l3234:
;batchpcb26k20.c: 32: if (input & 0b00000100) output |= 0b00000010;
	
	btfss	((c:reverse@input)),c,(2)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l3238
u3530:
	
l3236:
	bsf	(0+(1/8)+(c:reverse@output)),c,(1)&7
	goto	l3238
	
l119:
	line	33
	
l3238:
;batchpcb26k20.c: 33: if (input & 0b00001000) output |= 0b00000001;
	
	btfss	((c:reverse@input)),c,(3)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l3242
u3540:
	
l3240:
	bsf	(0+(0/8)+(c:reverse@output)),c,(0)&7
	goto	l3242
	
l120:
	line	34
	
l3242:
;batchpcb26k20.c: 34: return output;
	movf	((c:reverse@output)),c,w
	goto	l121
	
l3244:
	line	35
	
l121:
	return
	opt stack 0
GLOBAL	__end_of_reverse
	__end_of_reverse:
	signat	_reverse,4217
	global	_startTransmit

;; *************** function _startTransmit *****************
;; Defined at:
;;		line 37 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delayms
;;		_dataPinOut
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
global __ptext12
__ptext12:
psect	text12
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	37
	global	__size_of_startTransmit
	__size_of_startTransmit	equ	__end_of_startTransmit-_startTransmit
	
_startTransmit:
	opt	stack 27
	line	38
	
l3246:
;batchpcb26k20.c: 38: CREN = 0;
	bcf	c:(32092/8),(32092)&7	;volatile
	line	39
;batchpcb26k20.c: 39: LATC4 = 1;
	bsf	c:(31836/8),(31836)&7	;volatile
	line	40
;batchpcb26k20.c: 40: LATA0 = 1;
	bsf	c:(31816/8),(31816)&7	;volatile
	line	41
	
l3248:
;batchpcb26k20.c: 41: delayms(3);
	movlw	high(03h)
	movwf	((c:?_delayms+1)),c
	movlw	low(03h)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	42
	
l3250:
;batchpcb26k20.c: 42: dataPinOut();
	call	_dataPinOut	;wreg free
	line	43
	
l124:
	return
	opt stack 0
GLOBAL	__end_of_startTransmit
	__end_of_startTransmit:
	signat	_startTransmit,88
	global	_dataPinOut

;; *************** function _dataPinOut *****************
;; Defined at:
;;		line 43 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\hardware_config_10.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   87[COMRAM] int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startTransmit
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
global __ptext13
__ptext13:
psect	text13
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\hardware_config_10.h"
	global	__size_of_dataPinOut
	__size_of_dataPinOut	equ	__end_of_dataPinOut-_dataPinOut
	
_dataPinOut:
	opt	stack 27
	line	44
	
l3198:
;hardware_config_10.h: 44: TRISA = 0b00000100;
	movlw	low(04h)
	movwf	((c:3986)),c	;volatile
	line	45
	
l88:
	return
	opt stack 0
GLOBAL	__end_of_dataPinOut
	__end_of_dataPinOut:
	signat	_dataPinOut,90
	global	_stopTransmit

;; *************** function _stopTransmit *****************
;; Defined at:
;;		line 45 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataPinIn
;;		_delayms
;;		_sPuts
;;		_sPut
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
global __ptext14
__ptext14:
psect	text14
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	global	__size_of_stopTransmit
	__size_of_stopTransmit	equ	__end_of_stopTransmit-_stopTransmit
	
_stopTransmit:
	opt	stack 27
	line	46
	
l3252:
;batchpcb26k20.c: 46: dataPinIn();
	call	_dataPinIn	;wreg free
	line	47
	
l3254:
;batchpcb26k20.c: 47: delayms(3);
	movlw	high(03h)
	movwf	((c:?_delayms+1)),c
	movlw	low(03h)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	48
	
l3256:
;batchpcb26k20.c: 48: LATA0 = 0;
	bcf	c:(31816/8),(31816)&7	;volatile
	line	49
	
l3258:
;batchpcb26k20.c: 49: LATC4 = 0;
	bcf	c:(31836/8),(31836)&7	;volatile
	line	50
	
l3260:
;batchpcb26k20.c: 50: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	51
	
l3262:
;batchpcb26k20.c: 51: sPuts("$OK");
	movlw	high(STR_1)
	movwf	((c:?_sPuts+1)),c
	movlw	low(STR_1)
	movwf	((c:?_sPuts)),c
	call	_sPuts	;wreg free
	line	52
	
l3264:
;batchpcb26k20.c: 52: sPut(10);
	movwf	(??_stopTransmit+0+0)&0ffh,c
	movlw	low(0Ah)
	movwf	((c:?_sPut)),c
	movf	(??_stopTransmit+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	53
	
l127:
	return
	opt stack 0
GLOBAL	__end_of_stopTransmit
	__end_of_stopTransmit:
	signat	_stopTransmit,88
	global	_dataPinIn

;; *************** function _dataPinIn *****************
;; Defined at:
;;		line 47 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\hardware_config_10.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   90[COMRAM] int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_stopTransmit
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
global __ptext15
__ptext15:
psect	text15
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\hardware_config_10.h"
	line	47
	global	__size_of_dataPinIn
	__size_of_dataPinIn	equ	__end_of_dataPinIn-_dataPinIn
	
_dataPinIn:
	opt	stack 27
	line	48
	
l3200:
;hardware_config_10.h: 48: TRISA = 0b00000110;
	movlw	low(06h)
	movwf	((c:3986)),c	;volatile
	line	49
	
l91:
	return
	opt stack 0
GLOBAL	__end_of_dataPinIn
	__end_of_dataPinIn:
	signat	_dataPinIn,90
	global	_pingResponse

;; *************** function _pingResponse *****************
;; Defined at:
;;		line 69 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sPuts
;;		_sPut
;; This function is called by:
;;		_parseCmd
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
global __ptext16
__ptext16:
psect	text16
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	69
	global	__size_of_pingResponse
	__size_of_pingResponse	equ	__end_of_pingResponse-_pingResponse
	
_pingResponse:
	opt	stack 27
	line	70
	
l3284:
;batchpcb26k20.c: 70: sPuts("MultiTRX HWID 1.0, FWID 1.1 - skagmo.com");
	movlw	high(STR_2)
	movwf	((c:?_sPuts+1)),c
	movlw	low(STR_2)
	movwf	((c:?_sPuts)),c
	call	_sPuts	;wreg free
	line	71
;batchpcb26k20.c: 71: sPut(10);
	movwf	(??_pingResponse+0+0)&0ffh,c
	movlw	low(0Ah)
	movwf	((c:?_sPut)),c
	movf	(??_pingResponse+0+0)&0ffh,c,w
	call	_sPut	;wreg free
	line	72
	
l138:
	return
	opt stack 0
GLOBAL	__end_of_pingResponse
	__end_of_pingResponse:
	signat	_pingResponse,88
	global	_sPuts
	global	_sPut
	global	_gaoTx

;; *************** function _gaoTx *****************
;; Defined at:
;;		line 6 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
;; Parameters:    Size  Location     Type
;;  data            4   19[COMRAM] unsigned long 
;;  resends         1   23[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  bitnr           1   31[COMRAM] unsigned char 
;;  preamble        1   30[COMRAM] unsigned char 
;;  resend          1   25[COMRAM] unsigned char 
;;  temp            4   26[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delaynop
;;		_delayms
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
global __ptext17
__ptext17:
psect	text17
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
	line	6
	global	__size_of_gaoTx
	__size_of_gaoTx	equ	__end_of_gaoTx-_gaoTx
	
_gaoTx:
	opt	stack 27
	line	8
	
l3690:
;rf_tx.h: 7: unsigned long temp;
;rf_tx.h: 8: for (char resend = 0; resend < resends; resend++){
	movwf	(??_gaoTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:gaoTx@resend)),c
	movf	(??_gaoTx+0+0)&0ffh,c,w
	goto	l3744
	
l295:
	line	9
;rf_tx.h: 9: temp = data;
	movff	(c:gaoTx@data),(c:gaoTx@temp)
	movff	(c:gaoTx@data+1),(c:gaoTx@temp+1)
	movff	(c:gaoTx@data+2),(c:gaoTx@temp+2)
	movff	(c:gaoTx@data+3),(c:gaoTx@temp+3)
	line	10
	
l3692:
;rf_tx.h: 10: for (char preamble = 0; preamble < 4; preamble++){
	movwf	(??_gaoTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:gaoTx@preamble)),c
	movf	(??_gaoTx+0+0)&0ffh,c,w
	
l3694:
	movlw	(04h-1)
	cpfsgt	((c:gaoTx@preamble)),c
	goto	u4471
	goto	u4470
u4471:
	goto	l296
u4470:
	goto	l3706
	
l3696:
	goto	l3706
	
l296:
	line	11
;rf_tx.h: 11: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	12
	
l3698:
;rf_tx.h: 12: delaynop(176);
	movlw	high(0B0h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0B0h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	13
	
l3700:
;rf_tx.h: 13: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	14
;rf_tx.h: 14: delaynop(176);
	movlw	high(0B0h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0B0h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	10
	
l3702:
	incf	((c:gaoTx@preamble)),c
	
l3704:
	movlw	(04h-1)
	cpfsgt	((c:gaoTx@preamble)),c
	goto	u4481
	goto	u4480
u4481:
	goto	l296
u4480:
	goto	l3706
	
l297:
	line	16
	
l3706:
;rf_tx.h: 15: }
;rf_tx.h: 16: for (char bitnr = 0; bitnr < 24; bitnr++){
	movwf	(??_gaoTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:gaoTx@bitnr)),c
	movf	(??_gaoTx+0+0)&0ffh,c,w
	
l3708:
	movlw	(018h-1)
	cpfsgt	((c:gaoTx@bitnr)),c
	goto	u4491
	goto	u4490
u4491:
	goto	l298
u4490:
	goto	l299
	
l3710:
	goto	l299
	
l298:
	line	17
;rf_tx.h: 17: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	18
	
l3712:
;rf_tx.h: 18: delaynop(176);
	movlw	high(0B0h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0B0h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	19
	
l3714:
;rf_tx.h: 19: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	20
	
l3716:
;rf_tx.h: 20: if(temp & 0b100000000000000000000000) delaynop(176*2);
	
	btfss	((c:gaoTx@temp+2)),c,(23)&7
	goto	u4501
	goto	u4500
u4501:
	goto	l3720
u4500:
	
l3718:
	movlw	high(0160h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0160h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3722
	line	21
	
l300:
	
l3720:
;rf_tx.h: 21: else delaynop(176);
	movlw	high(0B0h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0B0h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3722
	
l301:
	line	22
	
l3722:
;rf_tx.h: 22: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	23
;rf_tx.h: 23: delaynop(176);
	movlw	high(0B0h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0B0h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	24
	
l3724:
;rf_tx.h: 24: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	25
	
l3726:
;rf_tx.h: 25: if(temp & 0b100000000000000000000000) delaynop(176);
	
	btfss	((c:gaoTx@temp+2)),c,(23)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l3730
u4510:
	
l3728:
	movlw	high(0B0h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0B0h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3732
	line	26
	
l302:
	
l3730:
;rf_tx.h: 26: else delaynop(176*2);
	movlw	high(0160h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0160h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3732
	
l303:
	line	27
	
l3732:
;rf_tx.h: 27: temp <<= 1;
	bcf	status,0
	rlcf	((c:gaoTx@temp)),c
	rlcf	((c:gaoTx@temp+1)),c
	rlcf	((c:gaoTx@temp+2)),c
	rlcf	((c:gaoTx@temp+3)),c
	line	16
	
l3734:
	incf	((c:gaoTx@bitnr)),c
	
l3736:
	movlw	(018h-1)
	cpfsgt	((c:gaoTx@bitnr)),c
	goto	u4521
	goto	u4520
u4521:
	goto	l298
u4520:
	
l299:
	line	29
;rf_tx.h: 28: }
;rf_tx.h: 29: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	30
	
l3738:
;rf_tx.h: 30: delaynop(176/2);
	movlw	high(058h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(058h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	31
	
l3740:
;rf_tx.h: 31: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	32
;rf_tx.h: 32: delayms(7);
	movlw	high(07h)
	movwf	((c:?_delayms+1)),c
	movlw	low(07h)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	8
	
l3742:
	incf	((c:gaoTx@resend)),c
	goto	l3744
	
l294:
	
l3744:
	movf	((c:gaoTx@resends)),c,w
	subwf	((c:gaoTx@resend)),c,w
	btfss	status,0
	goto	u4531
	goto	u4530
u4531:
	goto	l295
u4530:
	goto	l305
	
l304:
	line	35
;rf_tx.h: 33: }
;rf_tx.h: 34: return;
	
l305:
	return
	opt stack 0
GLOBAL	__end_of_gaoTx
	__end_of_gaoTx:
	signat	_gaoTx,8312
	global	_wavemanTx

;; *************** function _wavemanTx *****************
;; Defined at:
;;		line 45 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
;; Parameters:    Size  Location     Type
;;  data            2   19[COMRAM] unsigned int 
;;  resends         1   21[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  resend          1   25[COMRAM] unsigned char 
;;  tempdata        2   23[COMRAM] int 
;;  bitnr           1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delaynop
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
global __ptext18
__ptext18:
psect	text18
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
	line	45
	global	__size_of_wavemanTx
	__size_of_wavemanTx	equ	__end_of_wavemanTx-_wavemanTx
	
_wavemanTx:
	opt	stack 27
	line	48
	
l3746:
;rf_tx.h: 46: char bitnr;
;rf_tx.h: 47: int tempdata;
;rf_tx.h: 48: for (char resend = 0; resend < resends; resend++){
	movwf	(??_wavemanTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:wavemanTx@resend)),c
	movf	(??_wavemanTx+0+0)&0ffh,c,w
	goto	l3782
	
l309:
	line	49
;rf_tx.h: 49: tempdata = data;
	movff	(c:wavemanTx@data),(c:wavemanTx@tempdata)
	movff	(c:wavemanTx@data+1),(c:wavemanTx@tempdata+1)
	line	50
;rf_tx.h: 50: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	51
	
l3748:
;rf_tx.h: 51: delaynop(80);
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	52
	
l3750:
;rf_tx.h: 52: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	53
;rf_tx.h: 53: delaynop(504-80);
	movlw	high(01A8h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(01A8h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	54
	
l3752:
;rf_tx.h: 54: for (bitnr = 0; bitnr < 12; bitnr++){
	movwf	(??_wavemanTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:wavemanTx@bitnr)),c
	movf	(??_wavemanTx+0+0)&0ffh,c,w
	
l3754:
	movlw	(0Ch-1)
	cpfsgt	((c:wavemanTx@bitnr)),c
	goto	u4541
	goto	u4540
u4541:
	goto	l310
u4540:
	goto	l3778
	
l3756:
	goto	l3778
	
l310:
	line	55
;rf_tx.h: 55: if(tempdata & 0b0000100000000000){
	
	btfss	((c:wavemanTx@tempdata+1)),c,(11)&7
	goto	u4551
	goto	u4550
u4551:
	goto	l312
u4550:
	line	56
	
l3758:
;rf_tx.h: 56: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	57
	
l3760:
;rf_tx.h: 57: delaynop(340);
	movlw	high(0154h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0154h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	58
	
l3762:
;rf_tx.h: 58: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	59
;rf_tx.h: 59: delaynop(504-340);
	movlw	high(0A4h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0A4h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	60
;rf_tx.h: 60: }
	goto	l3768
	line	61
	
l312:
	line	62
;rf_tx.h: 61: else{
;rf_tx.h: 62: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	63
	
l3764:
;rf_tx.h: 63: delaynop(80);
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	64
	
l3766:
;rf_tx.h: 64: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	65
;rf_tx.h: 65: delaynop(504-80);
	movlw	high(01A8h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(01A8h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3768
	line	66
	
l313:
	line	67
	
l3768:
;rf_tx.h: 66: }
;rf_tx.h: 67: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	68
;rf_tx.h: 68: delaynop(80);
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	69
	
l3770:
;rf_tx.h: 69: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	70
;rf_tx.h: 70: delaynop(504-80);
	movlw	high(01A8h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(01A8h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	71
	
l3772:
;rf_tx.h: 71: tempdata <<= 1;
	bcf	status,0
	rlcf	((c:wavemanTx@tempdata)),c
	rlcf	((c:wavemanTx@tempdata+1)),c
	line	54
	
l3774:
	incf	((c:wavemanTx@bitnr)),c
	
l3776:
	movlw	(0Ch-1)
	cpfsgt	((c:wavemanTx@bitnr)),c
	goto	u4561
	goto	u4560
u4561:
	goto	l310
u4560:
	goto	l3778
	
l311:
	line	73
	
l3778:
;rf_tx.h: 72: }
;rf_tx.h: 73: delaynop(3400);
	movlw	high(0D48h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0D48h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	48
	
l3780:
	incf	((c:wavemanTx@resend)),c
	goto	l3782
	
l308:
	
l3782:
	movf	((c:wavemanTx@resends)),c,w
	subwf	((c:wavemanTx@resend)),c,w
	btfss	status,0
	goto	u4571
	goto	u4570
u4571:
	goto	l309
u4570:
	goto	l315
	
l314:
	line	76
;rf_tx.h: 74: }
;rf_tx.h: 75: return;
	
l315:
	return
	opt stack 0
GLOBAL	__end_of_wavemanTx
	__end_of_wavemanTx:
	signat	_wavemanTx,8312
	global	_nexaTx

;; *************** function _nexaTx *****************
;; Defined at:
;;		line 86 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
;; Parameters:    Size  Location     Type
;;  data            4   19[COMRAM] unsigned long 
;;  dimming         1   23[COMRAM] unsigned char 
;;  resends         1   24[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  resend          1   26[COMRAM] unsigned char 
;;  temp            4   27[COMRAM] unsigned long 
;;  bitnr           1   31[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delaynop
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
global __ptext19
__ptext19:
psect	text19
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
	line	86
	global	__size_of_nexaTx
	__size_of_nexaTx	equ	__end_of_nexaTx-_nexaTx
	
_nexaTx:
	opt	stack 27
	line	89
	
l3784:
;rf_tx.h: 87: unsigned long temp;
;rf_tx.h: 88: char bitnr;
;rf_tx.h: 89: for (char resend = 0; resend < resends; resend++){
	movwf	(??_nexaTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:nexaTx@resend)),c
	movf	(??_nexaTx+0+0)&0ffh,c,w
	goto	l3872
	
l319:
	line	90
;rf_tx.h: 90: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	91
	
l3786:
;rf_tx.h: 91: delaynop(60);
	movlw	high(03Ch)
	movwf	((c:?_delaynop+1)),c
	movlw	low(03Ch)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	92
	
l3788:
;rf_tx.h: 92: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	93
;rf_tx.h: 93: delaynop(800);
	movlw	high(0320h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0320h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	94
	
l3790:
;rf_tx.h: 94: temp = data;
	movff	(c:nexaTx@data),(c:nexaTx@temp)
	movff	(c:nexaTx@data+1),(c:nexaTx@temp+1)
	movff	(c:nexaTx@data+2),(c:nexaTx@temp+2)
	movff	(c:nexaTx@data+3),(c:nexaTx@temp+3)
	line	95
	
l3792:
;rf_tx.h: 95: for (bitnr = 0; bitnr < 32; bitnr++){
	movwf	(??_nexaTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:nexaTx@bitnr)),c
	movf	(??_nexaTx+0+0)&0ffh,c,w
	
l3794:
	movlw	(020h-1)
	cpfsgt	((c:nexaTx@bitnr)),c
	goto	u4581
	goto	u4580
u4581:
	goto	l320
u4580:
	goto	l3832
	
l3796:
	goto	l3832
	
l320:
	line	96
;rf_tx.h: 96: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	97
	
l3798:
;rf_tx.h: 97: delaynop(60);
	movlw	high(03Ch)
	movwf	((c:?_delaynop+1)),c
	movlw	low(03Ch)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	98
	
l3800:
;rf_tx.h: 98: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	99
	
l3802:
;rf_tx.h: 99: if (dimming && bitnr == 27) delaynop(80);
	movf	((c:nexaTx@dimming)),c,w
	btfsc	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l322
u4590:
	
l3804:
	movf	((c:nexaTx@bitnr)),c,w
	xorlw	27

	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l322
u4600:
	
l3806:
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3812
	line	100
	
l322:
;rf_tx.h: 100: else if(temp & 0b10000000000000000000000000000000) delaynop(390);
	
	btfss	((c:nexaTx@temp+3)),c,(31)&7
	goto	u4611
	goto	u4610
u4611:
	goto	l3810
u4610:
	
l3808:
	movlw	high(0186h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0186h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3812
	line	101
	
l324:
	
l3810:
;rf_tx.h: 101: else delaynop(80);
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3812
	
l325:
	goto	l3812
	
l323:
	line	102
	
l3812:
;rf_tx.h: 102: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	103
;rf_tx.h: 103: delaynop(60);
	movlw	high(03Ch)
	movwf	((c:?_delaynop+1)),c
	movlw	low(03Ch)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	104
	
l3814:
;rf_tx.h: 104: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	105
	
l3816:
;rf_tx.h: 105: if (dimming && bitnr == 27) delaynop(80);
	movf	((c:nexaTx@dimming)),c,w
	btfsc	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l326
u4620:
	
l3818:
	movf	((c:nexaTx@bitnr)),c,w
	xorlw	27

	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l326
u4630:
	
l3820:
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3826
	line	106
	
l326:
;rf_tx.h: 106: else if((temp & 0b10000000000000000000000000000000) == 0) delaynop(390);
	
	btfsc	((c:nexaTx@temp+3)),c,(31)&7
	goto	u4641
	goto	u4640
u4641:
	goto	l3824
u4640:
	
l3822:
	movlw	high(0186h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0186h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3826
	line	107
	
l328:
	
l3824:
;rf_tx.h: 107: else delaynop(80);
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3826
	
l329:
	goto	l3826
	
l327:
	line	108
	
l3826:
;rf_tx.h: 108: temp <<= 1;
	bcf	status,0
	rlcf	((c:nexaTx@temp)),c
	rlcf	((c:nexaTx@temp+1)),c
	rlcf	((c:nexaTx@temp+2)),c
	rlcf	((c:nexaTx@temp+3)),c
	line	95
	
l3828:
	incf	((c:nexaTx@bitnr)),c
	
l3830:
	movlw	(020h-1)
	cpfsgt	((c:nexaTx@bitnr)),c
	goto	u4651
	goto	u4650
u4651:
	goto	l320
u4650:
	goto	l3832
	
l321:
	line	110
	
l3832:
;rf_tx.h: 109: }
;rf_tx.h: 110: if (dimming != 0){
	movf	((c:nexaTx@dimming)),c,w
	btfsc	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l330
u4660:
	line	111
	
l3834:
;rf_tx.h: 111: temp = dimming;
	movf	((c:nexaTx@dimming)),c,w
	movwf	((c:nexaTx@temp)),c
	clrf	((c:nexaTx@temp+1)),c
	clrf	((c:nexaTx@temp+2)),c
	clrf	((c:nexaTx@temp+3)),c

	line	112
	
l3836:
;rf_tx.h: 112: for (bitnr = 0; bitnr < 4; bitnr++){
	movwf	(??_nexaTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:nexaTx@bitnr)),c
	movf	(??_nexaTx+0+0)&0ffh,c,w
	movlw	(04h-1)
	cpfsgt	((c:nexaTx@bitnr)),c
	goto	u4671
	goto	u4670
u4671:
	goto	l331
u4670:
	goto	l330
	
l3838:
	goto	l330
	
l331:
	line	113
;rf_tx.h: 113: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	114
	
l3840:
;rf_tx.h: 114: delaynop(60);
	movlw	high(03Ch)
	movwf	((c:?_delaynop+1)),c
	movlw	low(03Ch)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	115
	
l3842:
;rf_tx.h: 115: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	116
	
l3844:
;rf_tx.h: 116: if(temp & 0b1000) delaynop(390);
	
	btfss	((c:nexaTx@temp)),c,(3)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l3848
u4680:
	
l3846:
	movlw	high(0186h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0186h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3850
	line	117
	
l333:
	
l3848:
;rf_tx.h: 117: else delaynop(80);
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3850
	
l334:
	line	118
	
l3850:
;rf_tx.h: 118: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	119
;rf_tx.h: 119: delaynop(60);
	movlw	high(03Ch)
	movwf	((c:?_delaynop+1)),c
	movlw	low(03Ch)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	120
	
l3852:
;rf_tx.h: 120: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	121
	
l3854:
;rf_tx.h: 121: if(temp & 0b1000) delaynop(80);
	
	btfss	((c:nexaTx@temp)),c,(3)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l3858
u4690:
	
l3856:
	movlw	high(050h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(050h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3860
	line	122
	
l335:
	
l3858:
;rf_tx.h: 122: else delaynop(390);
	movlw	high(0186h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0186h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3860
	
l336:
	line	123
	
l3860:
;rf_tx.h: 123: temp <<= 1;
	bcf	status,0
	rlcf	((c:nexaTx@temp)),c
	rlcf	((c:nexaTx@temp+1)),c
	rlcf	((c:nexaTx@temp+2)),c
	rlcf	((c:nexaTx@temp+3)),c
	line	112
	
l3862:
	incf	((c:nexaTx@bitnr)),c
	
l3864:
	movlw	(04h-1)
	cpfsgt	((c:nexaTx@bitnr)),c
	goto	u4701
	goto	u4700
u4701:
	goto	l331
u4700:
	goto	l330
	
l332:
	line	125
	
l330:
	line	126
;rf_tx.h: 124: }
;rf_tx.h: 125: }
;rf_tx.h: 126: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	127
	
l3866:
;rf_tx.h: 127: delaynop(60);
	movlw	high(03Ch)
	movwf	((c:?_delaynop+1)),c
	movlw	low(03Ch)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	128
	
l3868:
;rf_tx.h: 128: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	129
;rf_tx.h: 129: delaynop(3000);
	movlw	high(0BB8h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(0BB8h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	89
	
l3870:
	incf	((c:nexaTx@resend)),c
	goto	l3872
	
l318:
	
l3872:
	movf	((c:nexaTx@resends)),c,w
	subwf	((c:nexaTx@resend)),c,w
	btfss	status,0
	goto	u4711
	goto	u4710
u4711:
	goto	l319
u4710:
	goto	l338
	
l337:
	line	132
;rf_tx.h: 130: }
;rf_tx.h: 131: return;
	
l338:
	return
	opt stack 0
GLOBAL	__end_of_nexaTx
	__end_of_nexaTx:
	signat	_nexaTx,12408
	global	_kangthaiTx

;; *************** function _kangthaiTx *****************
;; Defined at:
;;		line 139 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
;; Parameters:    Size  Location     Type
;;  data            4   19[COMRAM] unsigned long 
;;  resends         1   23[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  bitnr           1   30[COMRAM] unsigned char 
;;  resend          1   25[COMRAM] unsigned char 
;;  temp            4   26[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delaynop
;;		_delayms
;; This function is called by:
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
global __ptext20
__ptext20:
psect	text20
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\rf_tx.h"
	line	139
	global	__size_of_kangthaiTx
	__size_of_kangthaiTx	equ	__end_of_kangthaiTx-_kangthaiTx
	
_kangthaiTx:
	opt	stack 27
	line	141
	
l3874:
;rf_tx.h: 140: unsigned long temp;
;rf_tx.h: 141: for (char resend = 0; resend < resends; resend++){
	movwf	(??_kangthaiTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:kangthaiTx@resend)),c
	movf	(??_kangthaiTx+0+0)&0ffh,c,w
	goto	l3912
	
l342:
	line	142
;rf_tx.h: 142: temp = data;
	movff	(c:kangthaiTx@data),(c:kangthaiTx@temp)
	movff	(c:kangthaiTx@data+1),(c:kangthaiTx@temp+1)
	movff	(c:kangthaiTx@data+2),(c:kangthaiTx@temp+2)
	movff	(c:kangthaiTx@data+3),(c:kangthaiTx@temp+3)
	line	143
;rf_tx.h: 143: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	144
	
l3876:
;rf_tx.h: 144: delaynop(105);
	movlw	high(069h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(069h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	145
	
l3878:
;rf_tx.h: 145: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	146
;rf_tx.h: 146: delaynop(105*3);
	movlw	high(013Bh)
	movwf	((c:?_delaynop+1)),c
	movlw	low(013Bh)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	147
	
l3880:
;rf_tx.h: 147: for (char bitnr = 0; bitnr < 12; bitnr++){
	movwf	(??_kangthaiTx+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:kangthaiTx@bitnr)),c
	movf	(??_kangthaiTx+0+0)&0ffh,c,w
	
l3882:
	movlw	(0Ch-1)
	cpfsgt	((c:kangthaiTx@bitnr)),c
	goto	u4721
	goto	u4720
u4721:
	goto	l343
u4720:
	goto	l3908
	
l3884:
	goto	l3908
	
l343:
	line	148
;rf_tx.h: 148: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	149
;rf_tx.h: 149: if(temp & 0b100000000000) delaynop(105);
	
	btfss	((c:kangthaiTx@temp+1)),c,(11)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l3888
u4730:
	
l3886:
	movlw	high(069h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(069h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3890
	line	150
	
l345:
	
l3888:
;rf_tx.h: 150: else delaynop(105*3);
	movlw	high(013Bh)
	movwf	((c:?_delaynop+1)),c
	movlw	low(013Bh)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3890
	
l346:
	line	151
	
l3890:
;rf_tx.h: 151: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	152
	
l3892:
;rf_tx.h: 152: if(temp & 0b100000000000) delaynop(105*3);
	
	btfss	((c:kangthaiTx@temp+1)),c,(11)&7
	goto	u4741
	goto	u4740
u4741:
	goto	l3896
u4740:
	
l3894:
	movlw	high(013Bh)
	movwf	((c:?_delaynop+1)),c
	movlw	low(013Bh)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3898
	line	153
	
l347:
	
l3896:
;rf_tx.h: 153: else delaynop(105);
	movlw	high(069h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(069h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	goto	l3898
	
l348:
	line	154
	
l3898:
;rf_tx.h: 154: LATA1 = 1;
	bsf	c:(31817/8),(31817)&7	;volatile
	line	155
;rf_tx.h: 155: delaynop(105);
	movlw	high(069h)
	movwf	((c:?_delaynop+1)),c
	movlw	low(069h)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	156
	
l3900:
;rf_tx.h: 156: LATA1 = 0;
	bcf	c:(31817/8),(31817)&7	;volatile
	line	157
;rf_tx.h: 157: delaynop(105*3);
	movlw	high(013Bh)
	movwf	((c:?_delaynop+1)),c
	movlw	low(013Bh)
	movwf	((c:?_delaynop)),c
	call	_delaynop	;wreg free
	line	158
	
l3902:
;rf_tx.h: 158: temp <<= 1;
	bcf	status,0
	rlcf	((c:kangthaiTx@temp)),c
	rlcf	((c:kangthaiTx@temp+1)),c
	rlcf	((c:kangthaiTx@temp+2)),c
	rlcf	((c:kangthaiTx@temp+3)),c
	line	147
	
l3904:
	incf	((c:kangthaiTx@bitnr)),c
	
l3906:
	movlw	(0Ch-1)
	cpfsgt	((c:kangthaiTx@bitnr)),c
	goto	u4751
	goto	u4750
u4751:
	goto	l343
u4750:
	goto	l3908
	
l344:
	line	160
	
l3908:
;rf_tx.h: 159: }
;rf_tx.h: 160: delayms(10);
	movlw	high(0Ah)
	movwf	((c:?_delayms+1)),c
	movlw	low(0Ah)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	141
	
l3910:
	incf	((c:kangthaiTx@resend)),c
	goto	l3912
	
l341:
	
l3912:
	movf	((c:kangthaiTx@resends)),c,w
	subwf	((c:kangthaiTx@resend)),c,w
	btfss	status,0
	goto	u4761
	goto	u4760
u4761:
	goto	l342
u4760:
	goto	l350
	
l349:
	line	163
;rf_tx.h: 161: }
;rf_tx.h: 162: return;
	
l350:
	return
	opt stack 0
GLOBAL	__end_of_kangthaiTx
	__end_of_kangthaiTx:
	signat	_kangthaiTx,8312
	global	_delayms

;; *************** function _delayms *****************
;; Defined at:
;;		line 14 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;  ms              2   14[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  counter         2   17[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startTransmit
;;		_stopTransmit
;;		_startupBlinkLed
;;		_gaoTx
;;		_kangthaiTx
;;		_parseCmd
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
global __ptext21
__ptext21:
psect	text21
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	14
	global	__size_of_delayms
	__size_of_delayms	equ	__end_of_delayms-_delayms
	
_delayms:
	opt	stack 27
	line	15
	
l3202:
;batchpcb26k20.c: 15: for (int counter = 0; counter < ms; counter++) _delay((unsigned long)((1)*(32000000/4000.0)));
	movlw	high(0)
	movwf	((c:delayms@counter+1)),c
	movlw	low(0)
	movwf	((c:delayms@counter)),c
	goto	l100
	
l101:
	
l3204:
	movlw	11
movwf	(??_delayms+0+0)&0ffh,c,f
	movlw	98
u6447:
	decfsz	wreg,f
	goto	u6447
	decfsz	(??_delayms+0+0)&0ffh,c,f
	goto	u6447
	nop

	
l3206:
	infsnz	((c:delayms@counter)),c
	incf	((c:delayms@counter+1)),c
	
l100:
	movf	((c:delayms@counter+1)),c,w
	xorlw	80h
	movwf	(??_delayms+0+0)&0ffh,c
	movf	((c:delayms@ms)),c,w
	subwf	((c:delayms@counter)),c,w
	movf	((c:delayms@ms+1)),c,w
	xorlw	80h
	subwfb	(??_delayms+0+0)&0ffh,c,w
	btfss	status,0
	goto	u3481
	goto	u3480
u3481:
	goto	l3204
u3480:
	goto	l103
	
l102:
	line	16
	
l103:
	return
	opt stack 0
GLOBAL	__end_of_delayms
	__end_of_delayms:
	signat	_delayms,4216
	global	_delaynop

;; *************** function _delaynop *****************
;; Defined at:
;;		line 18 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;  cyc             2   14[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  counter         2   17[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gaoTx
;;		_wavemanTx
;;		_nexaTx
;;		_kangthaiTx
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
global __ptext22
__ptext22:
psect	text22
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	18
	global	__size_of_delaynop
	__size_of_delaynop	equ	__end_of_delaynop-_delaynop
	
_delaynop:
	opt	stack 27
	line	19
	
l3208:
;batchpcb26k20.c: 19: for (int counter = 0; counter < cyc; counter++) asm(" nop");
	movlw	high(0)
	movwf	((c:delaynop@counter+1)),c
	movlw	low(0)
	movwf	((c:delaynop@counter)),c
	goto	l3212
	
l107:
# 19 "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
nop ;# 
psect	text22
	
l3210:
	infsnz	((c:delaynop@counter)),c
	incf	((c:delaynop@counter+1)),c
	goto	l3212
	
l106:
	
l3212:
	movf	((c:delaynop@counter+1)),c,w
	xorlw	80h
	movwf	(??_delaynop+0+0)&0ffh,c
	movf	((c:delaynop@cyc)),c,w
	subwf	((c:delaynop@counter)),c,w
	movf	((c:delaynop@cyc+1)),c,w
	xorlw	80h
	subwfb	(??_delaynop+0+0)&0ffh,c,w
	btfss	status,0
	goto	u3491
	goto	u3490
u3491:
	goto	l107
u3490:
	goto	l109
	
l108:
	line	20
	
l109:
	return
	opt stack 0
GLOBAL	__end_of_delaynop
	__end_of_delaynop:
	signat	_delaynop,4216
	global	_sGet
	global	_sInWaiting
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   26[COMRAM] long 
;;  divisor         4   30[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   37[COMRAM] long 
;;  sign            1   36[COMRAM] unsigned char 
;;  counter         1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printEsic
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\aldiv.c"
	line	10
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
	opt	stack 27
	line	14
	
l4740:
	movwf	(??___aldiv+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	movf	(??___aldiv+0+0)&0ffh,c,w
	line	15
	
l4742:
	btfss	((c:___aldiv@divisor+3)),c,7
	goto	u6241
	goto	u6240
u6241:
	goto	l4748
u6240:
	line	16
	
l4744:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l4746:
	movwf	(??___aldiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	movf	(??___aldiv+0+0)&0ffh,c,w
	goto	l4748
	line	18
	
l440:
	line	19
	
l4748:
	btfss	((c:___aldiv@dividend+3)),c,7
	goto	u6251
	goto	u6250
u6251:
	goto	l4754
u6250:
	line	20
	
l4750:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l4752:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l4754
	line	22
	
l441:
	line	23
	
l4754:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l4756:
	movf	((c:___aldiv@divisor+3)),c,w
	iorwf ((c:___aldiv@divisor)),c,w
	iorwf ((c:___aldiv@divisor+1)),c,w
	iorwf ((c:___aldiv@divisor+2)),c,w

	btfsc	status,2
	goto	u6261
	goto	u6260
u6261:
	goto	l4776
u6260:
	line	25
	
l4758:
	movwf	(??___aldiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	movf	(??___aldiv+0+0)&0ffh,c,w
	line	26
	goto	l4762
	
l444:
	line	27
	
l4760:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l4762
	line	29
	
l443:
	line	26
	
l4762:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u6271
	goto	u6270
u6271:
	goto	l4760
u6270:
	goto	l4764
	
l445:
	goto	l4764
	line	30
	
l446:
	line	31
	
l4764:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l4766:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u6281
	goto	u6280
u6281:
	goto	l4772
u6280:
	line	33
	
l4768:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l4770:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l4772
	line	35
	
l447:
	line	36
	
l4772:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l4774:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l4764
	goto	l4776
	
l448:
	goto	l4776
	line	38
	
l442:
	line	39
	
l4776:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u6291
	goto	u6290
u6291:
	goto	l4780
u6290:
	line	40
	
l4778:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l4780
	
l449:
	line	41
	
l4780:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l450
	
l4782:
	line	42
	
l450:
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\almod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   14[COMRAM] long 
;;  divisor         4   18[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   24[COMRAM] unsigned char 
;;  counter         1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printEsic
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\almod.c"
	line	10
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
	opt	stack 27
	line	13
	
l4784:
	movwf	(??___almod+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	movf	(??___almod+0+0)&0ffh,c,w
	line	14
	
l4786:
	btfss	((c:___almod@dividend+3)),c,7
	goto	u6301
	goto	u6300
u6301:
	goto	l4792
u6300:
	line	15
	
l4788:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l4790:
	movwf	(??___almod+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	movf	(??___almod+0+0)&0ffh,c,w
	goto	l4792
	line	17
	
l453:
	line	18
	
l4792:
	btfss	((c:___almod@divisor+3)),c,7
	goto	u6311
	goto	u6310
u6311:
	goto	l4796
u6310:
	line	19
	
l4794:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l4796
	
l454:
	line	20
	
l4796:
	movf	((c:___almod@divisor+3)),c,w
	iorwf ((c:___almod@divisor)),c,w
	iorwf ((c:___almod@divisor+1)),c,w
	iorwf ((c:___almod@divisor+2)),c,w

	btfsc	status,2
	goto	u6321
	goto	u6320
u6321:
	goto	l4812
u6320:
	line	21
	
l4798:
	movwf	(??___almod+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	movf	(??___almod+0+0)&0ffh,c,w
	line	22
	goto	l4802
	
l457:
	line	23
	
l4800:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l4802
	line	25
	
l456:
	line	22
	
l4802:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u6331
	goto	u6330
u6331:
	goto	l4800
u6330:
	goto	l4804
	
l458:
	goto	l4804
	line	26
	
l459:
	line	27
	
l4804:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u6341
	goto	u6340
u6341:
	goto	l4808
u6340:
	line	28
	
l4806:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l4808
	
l460:
	line	29
	
l4808:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l4810:
	decfsz	((c:___almod@counter)),c
	
	goto	l4804
	goto	l4812
	
l461:
	goto	l4812
	line	31
	
l455:
	line	32
	
l4812:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u6351
	goto	u6350
u6351:
	goto	l4816
u6350:
	line	33
	
l4814:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l4816
	
l462:
	line	34
	
l4816:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l463
	
l4818:
	line	35
	
l463:
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   21[COMRAM] int 
;;  sign            1   20[COMRAM] unsigned char 
;;  counter         1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printEsic
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\awdiv.c"
	line	10
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
	opt	stack 27
	line	14
	
l4820:; BSR set to: 0

	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	15
	
l4822:
	btfss	((c:___awdiv@divisor+1)),c,7
	goto	u6361
	goto	u6360
u6361:
	goto	l4828
u6360:
	line	16
	
l4824:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l4826:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	goto	l4828
	line	18
	
l519:
	line	19
	
l4828:
	btfss	((c:___awdiv@dividend+1)),c,7
	goto	u6371
	goto	u6370
u6371:
	goto	l4834
u6370:
	line	20
	
l4830:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l4832:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l4834
	line	22
	
l520:
	line	23
	
l4834:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l4836:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	u6381
	goto	u6380
u6381:
	goto	l4856
u6380:
	line	25
	
l4838:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	26
	goto	l4842
	
l523:
	line	27
	
l4840:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l4842
	line	29
	
l522:
	line	26
	
l4842:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u6391
	goto	u6390
u6391:
	goto	l4840
u6390:
	goto	l4844
	
l524:
	goto	l4844
	line	30
	
l525:
	line	31
	
l4844:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l4846:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u6401
	goto	u6400
u6401:
	goto	l4852
u6400:
	line	33
	
l4848:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l4850:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l4852
	line	35
	
l526:
	line	36
	
l4852:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l4854:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l4844
	goto	l4856
	
l527:
	goto	l4856
	line	38
	
l521:
	line	39
	
l4856:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u6411
	goto	u6410
u6411:
	goto	l4860
u6410:
	line	40
	
l4858:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l4860
	
l528:
	line	41
	
l4860:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l529
	
l4862:
	line	42
	
l529:
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4   14[COMRAM] unsigned long 
;;  multiplicand    4   18[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   22[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4   14[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printEsic
;;		___aslmul
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
	opt	stack 27
	line	4
	
l4864:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l4866
	line	6
	
l824:
	line	7
	
l4866:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u6421
	goto	u6420
u6421:
	goto	l4870
u6420:
	line	8
	
l4868:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l4870
	
l825:
	line	9
	
l4870:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	10
	
l4872:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3)),c
	rrcf	((c:___lmul@multiplier+2)),c
	rrcf	((c:___lmul@multiplier+1)),c
	rrcf	((c:___lmul@multiplier)),c
	line	11
	movf	((c:___lmul@multiplier+3)),c,w
	iorwf ((c:___lmul@multiplier)),c,w
	iorwf ((c:___lmul@multiplier+1)),c,w
	iorwf ((c:___lmul@multiplier+2)),c,w

	btfss	status,2
	goto	u6431
	goto	u6430
u6431:
	goto	l4866
u6430:
	
l826:
	line	12
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	13
	
l827:
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_intRoutineHigh

;; *************** function _intRoutineHigh *****************
;; Defined at:
;;		line 8 in file "C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"C:\Users\Jon Petter\Desktop\MultiTRX v2 (26K20)\batchpcb26k20.c"
	line	8
	global	__size_of_intRoutineHigh
	__size_of_intRoutineHigh	equ	__end_of_intRoutineHigh-_intRoutineHigh
	
_intRoutineHigh:
	opt	stack 27
	movff	pclat+0,??_intRoutineHigh+0
	movff	pclat+1,??_intRoutineHigh+1
	movff	fsr0l+0,??_intRoutineHigh+2
	movff	fsr0h+0,??_intRoutineHigh+3
	movff	fsr1l+0,??_intRoutineHigh+4
	movff	fsr1h+0,??_intRoutineHigh+5
	movff	fsr2l+0,??_intRoutineHigh+6
	movff	fsr2h+0,??_intRoutineHigh+7
	movff	prodl+0,??_intRoutineHigh+8
	movff	prodh+0,??_intRoutineHigh+9
	movff	tblptrl+0,??_intRoutineHigh+10
	movff	tblptrh+0,??_intRoutineHigh+11
	movff	tblptru+0,??_intRoutineHigh+12
	movff	tablat+0,??_intRoutineHigh+13
	line	9
	
i2l1088:
;batchpcb26k20.c: 9: if(RCIF){ rxbuffer[rxip] = RCREG; rxip = (rxip+1) & (128 - 1); RCIF = 0; } if(TXIF && TXIE){ TXREG = txbuffer[txop]; txop = (txop+1) & (128 - 1); if(txop == txip) TXIE = 0; TXIF = 0; };
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u1_41
	goto	i2u1_40
i2u1_41:
	goto	i2l1096
i2u1_40:
	
i2l1090:
	movlb	_rxip>>8	; () unknown bank
	movlb	_rxip>>8	; () unknown bank
	movf	((_rxip))&0ffh,w	;volatile
	mullw	01h
	movlb	_rxbuffer>>8	; () unknown bank
	movlw	low(_rxbuffer)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	_rxbuffer>>8	; () unknown bank
	movlw	high(_rxbuffer)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:4014),indf2	;volatile

	
i2l1092:
	movlb	_rxip>>8	; () unknown bank
	movlb	_rxip>>8	; () unknown bank
	incf	((_rxip))&0ffh,w	;volatile
	andlw	low(07Fh)
	movlb	_rxip>>8	; () unknown bank
	movlb	_rxip>>8	; () unknown bank
	movwf	((_rxip))&0ffh	;volatile
	
i2l1094:
	bcf	c:(31989/8),(31989)&7	;volatile
	goto	i2l1096
	
i2l94:
	
i2l1096:
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	i2u2_41
	goto	i2u2_40
i2u2_41:
	goto	i2l97
i2u2_40:
	
i2l1098:
	btfss	c:(31980/8),(31980)&7	;volatile
	goto	i2u3_41
	goto	i2u3_40
i2u3_41:
	goto	i2l97
i2u3_40:
	
i2l1100:
	movlb	_txop>>8	; () unknown bank
	movlb	_txop>>8	; () unknown bank
	movf	((_txop))&0ffh,w	;volatile
	mullw	01h
	movlb	_txbuffer>>8	; () unknown bank
	movlw	low(_txbuffer)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	_txbuffer>>8	; () unknown bank
	movlw	high(_txbuffer)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4013)),c	;volatile
	
i2l1102:
	movlb	_txop>>8	; () unknown bank
	movlb	_txop>>8	; () unknown bank
	incf	((_txop))&0ffh,w	;volatile
	andlw	low(07Fh)
	movlb	_txop>>8	; () unknown bank
	movlb	_txop>>8	; () unknown bank
	movwf	((_txop))&0ffh	;volatile
	
i2l1104:
	movlb	_txip>>8	; () unknown bank
	movlb	_txip>>8	; () unknown bank
	movf	((_txip))&0ffh,w	;volatile
	movlb	_txop>>8	; () unknown bank
	movlb	_txop>>8	; () unknown bank
	cpfseq	((_txop))&0ffh	;volatile
	goto	i2u4_41
	goto	i2u4_40
i2u4_41:
	goto	i2l96
i2u4_40:
	
i2l1106:
	bcf	c:(31980/8),(31980)&7	;volatile
	
i2l96:
	bcf	c:(31988/8),(31988)&7	;volatile
	goto	i2l97
	
i2l95:
	line	10
	
i2l97:
	movff	??_intRoutineHigh+13,tablat+0
	movff	??_intRoutineHigh+12,tblptru+0
	movff	??_intRoutineHigh+11,tblptrh+0
	movff	??_intRoutineHigh+10,tblptrl+0
	movff	??_intRoutineHigh+9,prodh+0
	movff	??_intRoutineHigh+8,prodl+0
	movff	??_intRoutineHigh+7,fsr2h+0
	movff	??_intRoutineHigh+6,fsr2l+0
	movff	??_intRoutineHigh+5,fsr1h+0
	movff	??_intRoutineHigh+4,fsr1l+0
	movff	??_intRoutineHigh+3,fsr0h+0
	movff	??_intRoutineHigh+2,fsr0l+0
	movff	??_intRoutineHigh+1,pclat+1
	movff	??_intRoutineHigh+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_intRoutineHigh
	__end_of_intRoutineHigh:
	signat	_intRoutineHigh,88
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
