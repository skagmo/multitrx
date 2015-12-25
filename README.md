MultiTRX - home automation transceiver
======================================

<img src="https://github.com/skagmo/multitrx/blob/master/documentation/img/hw10and11.jpg" alt="multitrx" style="width:500">

The MultiTRX is a small USB RF transceiver made to control cheap remote power switches and decode various sensors operating at 433,92 MHz. The project originates back to 2011, and was one of my first serious microcontroller projects. I have now decided to make the project open source, and at the same time releasing a new firmware almost 5 years after the previous firmware was released! See "firmware/1.3/CHANGES" for details. 

Compatible with many products operating on 433,92 MHz
-----------------------------------------------------
- Nexa self learning system (decode, encode)
- Nexa code wheel system (decode)
- Kangthai power switches (encode)
- GAO power switches (decode, encode)
- Waveman power switches (encode)
- Doro PIR and door sensors (decode)
- Esic temperature sensors (decode)

Firmware project
----------------

The project is made in Microchip MPLAB X with XC8 compiler. Firmware 1.3 can be flashed to a MultiTRX hardware 1.1 (red PCB). Hardware 1.0 (green PCB) is not supported in the latest firwmare because the transceiver data pin is not connected to an interrupt pin on the microcontroller. Allowing non-interrupt-driven timing for legacy devices can easily be done by looking at how timing is done in firwmare 1.2. Now it's all open source, so feel obligated ;)

To upload the firwmare use on of the two methods below:
- Connect a PIC programmer to the six exposed pads on the MultiTRX (while powered)
- For most devices, a bootloader should be flashed to the microcontroller. Upload the ".hex"-file from "firmware/1.3/multitrx.X/dist/default/production/" using the "ds30 Loader" bootloader and instructions in "firmware/bootloader-and-compiled/"

Packet scope
------------

With firmware 1.3, the MultiTRX can forward raw samples from the ASK transceiver. This is very useful for reverse engineering more protocols.
- Verify port name and run the python program "reverse-engineering/mtrx-raw.py"
- When a sequence of bits is received above the noise level, the bit timing is printed and a plot will open
- Close the plot to allow for a new sequence to be received

Operation manual
----------------

The easiest way of controlling your remote power switch is to keep your (already paired) remote control close to the MultiTRX and copy the string received, eg. "$GABC2F0". This way you can switch on and off this device by sending "$GABC2F1" and "$GABC2F0", respectively.

### Gao-specific
If you want to pair a GAO device with the MultiTRX directly, send the string above, but replace the power on/off parameter with the number two: $GABC2F2.

### Nexa-specific
Nexa dimmers has the great feature of being able to dim to an absolute level in 16 steps. To do so, replace the power on/off parameter with the number two, and add an extra hexadecimal character (upper case) with the dim level: $N1234ABC030 -> $N1234ABC032F (will set the device to maximum brightness).
Complete command list

All communication is done at 8N1 9600 baud (115200 baud for firmware 1.3 due to raw mode requiring higher data rate), ASCII-formatted data. Data sent to and received from the board is terminated with LF (ASCII character 10) or CR (ASCII character 13). All hexadecimal characters must be in upper case!

### Commands transmitted from MultiTRX (RF-reception)

| Output       | Description | Example(s)  |
|:------       |:----------- |:----------  |
| $Dddd    | Doro Secur sensor. d = dip switch settings (hex). | $DA07 |
| $Eh,c,t,H,b | Esic temperature sensor. h = house code, c = channel, t = temperature (degrees Celsius), H = relative humidity (percent), b = low battery indicator (0/1). | $E5,1,12.3,71,0 |
| $GiiicCp | GAO remote power switch. i = unique ID (hex), c = channel, C = checksum, p = power setting (0/1) | $GABC2F0 $GABC2F1 |
| $Niiiiiiigcp | Nexa remote power switch. i = unique ID (hex), g = group enable (0/1), c = channel (hex), p = power setting (0/1). Packets with dim level will not be received! | $N1234ABC010 $N1234ABC011 |
| $Bd | Custom BMC-protocol data. d = data (in ASCII hex or raw data, depending on the "in hex"-parameter). Packet length can vary, and a lot of settings (including repeating) can be set with the settings-command. | $B123 $B313233 |

### Commands transmitted to the MultiTRX (RF-transmission)

| Input | Description | Example(s) |
|:----- |:----------- |:---------- |
| $GiiicCp | GAO remote power switch. i = unique ID (hex), c = channel, C = checksum, p = power setting (0/1) and pairing mode (2) | $GABC2F0 $GABC2F1 |
| $Niiiiiiigcp[l] | Nexa remote power switch. i = unique ID (hex), g = group enable (0/1), c = channel (hex), p = power setting (0/1, absolute dim level = 2), l = dim level (hex). Dim level only applies if p = 2, so the length of this string varies. | $N1234ABC010 $N1234ABC011 $N1234ABC012F |
| $Whuup | Waveman remote power switch. h = house code (A-P), uu = unit code (01-16), p = power setting (0/1) | $WA011 |
| $Kssssscp | Kangtai remote power switch. s = system code dip switch (0/1), c = channel (A-E), p = power setting (0/1) | $K00001A1 |
| $Bd | See above. | - |

### Other commands transmitted to the MultiTRX

| Input | Description | Example(s) |
|:----- |:----------- |:---------- |
| $S | Print all settings. Settings can be changed by typing the character shown in brackets after typing "$S". | - |
| $P | The MultiTRX will respond with version number | - |
| $X | Force restart. Primarily used to upload new firmware with bootloader. | - |
| $Sp | Execute setting p (for commands with no value) | $SF (to load defaults) |
| $Spv | Set setting "p" to value "v" | $SD0 (to deactivate Doro-reception) | 

--
Jon Petter Skagmo, LA3JPA
