HomeGenie MultiTRX addon
========================

![HomeGenie screenshot](https://github.com/skagmo/multitrx/blob/master/homegenie-addon/screenshot.png)

After discovering many alternatives for home automation such as "HomeGenie", "OpenHAB" and "Domoticz", I've skipped further development of "Device Control Center" which was made for the MultiTRX. The scope of making a full home automation daemon, a nice web-UI and an android app is way too large, and the available alternatives are just getting better and better.

HomeGenie was chosen over the other platforms because:
- The web-interface is far ahead of its competitors. It looks very modern and is quick and reponsive
- It has a free Android app, as well as more sophisticated and slick non-free app (HomeGenie Plus)
- It has a comprehensive API and powerful scripting in C#
- It is easy to interface with new hardware

Getting started
---------------

- Go to "Configure", "Programs", then add a new group or enter an existing group
- Go to "Actions", "Import program", and select the "MultiGenie.hgx"-file from this repository
- When the program is imported, click on it to set options such as port and baud rate, then click "restart" to run the program
- As devices are received, they will be added as modules in HomeGenie

Add modules to a group:
- Go to "Configure", "Groups", select a group
- Go to to "Actions", "Add Module", and select one of the discovered modules under the domain "HomeAutomation.MultiTRX.serial"

Now you can control your lights with an Android app, PIR sensor activity, scheduled events such as sunset/sunrise, etc.

If you are using a NEXA dimmer, configure the module to be of a "Dimmer" type, rather than "Switch" or "Light".

Using a remote MultiTRX device
------------------------------

To extend coverage, you can connect another MultiTRX to for example a Raspberry Pi and place it in a remote part of your house. Run a TCP-server with socat to make it available for HomeGenie.

Remote device running Linux:
- Set baud rate with for example "stty -F /dev/ttyUSB0 115200"
- Run socat in background or screen with something like "socat TCP-LISTEN:1340,fork,reuseaddr /dev/ttyUSB0,echo=0,unlink-close=0"

HomeGenie server:
- Configure HomeGenie to connect to the remote device by setting the hostname property in MultiGenie

--
Jon Petter Skagmo, LA3JPA
