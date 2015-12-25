#!/usr/bin/python
# -*- coding: UTF-8 -*-

import serial, time

ser = serial.Serial("/dev/ttyUSB0",115200,timeout=0)
ser.write("$N02A05DA0212\n")
while(1):
	for j in range(0,16):
		ser.write("$N02A05DA022" + chr(j) + "\r\n")
		print j
		time.sleep(2)
ser.close()
