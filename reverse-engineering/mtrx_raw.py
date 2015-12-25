#!/usr/bin/python

import serial, time, sys, matplotlib
import matplotlib.pyplot as plt

port = "/dev/ttyUSB0"
baud = 115200

def doPlot(lengths_in, states):
    states.insert(0,0)
    lengths = [0]
    for j in lengths_in:
        lengths.append(lengths[-1]+j)
                    
    fig = plt.figure(figsize=(15,4))
    ax = fig.add_subplot(111)
    ax.grid(True)
    ax.set_title("Received waveform")
    #Set Y-axis parameters
    ax.set_ylabel(u"State")
    ax.set_ylim(ymin=-0.1, ymax=1.1)
    ax.set_yticks((0,1))
    ax.set_yticklabels(("False", "True"))
    #Set X-axis parameters
    #ax.set_xlim([0,40000])
    ax.set_xlabel("Time (uS)")
    ax.plot(lengths, states, color="green", linewidth=1, drawstyle="steps-pre")
    plt.show()

def printPulses(lengths, states):
    string = ""
    for j in range(0,len(lengths)):
        string += "%d:%d\t" % (states[j],lengths[j])
    print string

# Each state change starts transmission of two bytes on the format pppsllll llllllll
# where 'p' means preamble (three bits), 's' is state (one bit) and 'l' means length (12 bits, 16 ns steps)

s = serial.Serial(port, baud, timeout=0.1)
s.write("$SF\n")  # Load factory defaults
s.write("$SN0\n") # Disable NEXA
s.write("$SE0\n") # Disable ESIC
s.write("$SC0\n") # Disable NEXA code wheel
s.write("$SI\n")  # Calibrate noise floor - all data below noise will be squelched 
s.write("$SR1\n") # Enable RAW RX mode
time.sleep(0.1)
print s.read(100)

try:
    while (True):
        lengths     = []
        states      = []
        data        = []
            
        while(1):
            c = s.read(1)
            if c:
                c = ord(c)
                if ((c&0xC0) == 0x80):  # This is the first (preamble) byte
                    finished = (c&0x20)>>5
                    state = (c&0x10)>>4
                    length = (((c&0x0F)<<8) + ord(s.read(1))) * 16 # length is in steps of 1uS
                    #print (length/16)
                    lengths.append(length)
                    states.append(state)
                    if length > 5000:
                        break
                    if finished:
                        break
                    
        if len(lengths)>1:
            printPulses(lengths, states)
            print "Received %d pulses." % (len(lengths)-1)
            s.close()
            doPlot(lengths, states)
            s = serial.Serial(port, baud, timeout=tout)
        time.sleep(0.01)
            
except KeyboardInterrupt:
    print "Exiting!"
    s.close()
except Exception, e:
    print e
    s.close()
