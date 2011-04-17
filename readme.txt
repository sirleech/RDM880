#RDM880 Sample Code

##From: http://arduino.cc/forum/index.php?topic=18641.0

I now got the RDM880 working! I found an article by michu of neophob.com where he uses something called a Bus Pirate to communicate with the 880 over a terminal. While the 630 to me seems to work "passivly" the 880 needs commands to operate. Michu connects RESET, but when testing i did not need this (but not yet validated that output is correct, just happy to get something out of it ). What I did need to do was to connect both RXD and TXD (RX on Arduino goes to TXD on 880 and vice versa), which enabled me to send MF_GET_SNR.

##Bus Pirate exploration:
http://www.neophob.com/2010/03/bus-pirate-fun-rdm880-rfid-module/