// http://arduiniana.org/libraries/newsoftserial/
#include <NewSoftSerial.h>


byte query[8] = {
  0xAA, 0x00, 0x03, 0x25, 0x26, 0x00, 0x00, 0xBB};
byte led1[8] = {
  0xAA, 0x00, 0x03, 0x87, 0x18, 0x0a, 0x96, 0xBB};
byte led2[8] = {
  0xAA, 0x00, 0x03, 0x88, 0x18, 0x0a, 0x99, 0xBB};
byte buzzer[8] = {
  0xAA, 0x00, 0x03, 0x89, 0x18, 0x0a, 0x98, 0xBB};

#define rxPin 2
#define txPin 3


NewSoftSerial rfid( rxPin, txPin );

void setup() 
{

  Serial.begin(115200);

  rfid.begin(9600);

  Serial.println("setup() ends");
}
byte val;
int i ;
void loop()
{

  for (i=0 ; i<8 ; i++){
    rfid.print(query[i]) ;
  }

  delay(50);
 
  while(rfid.available()>0){
    val=rfid.read();
    Serial.print(val, HEX);
    Serial.print(" ");
  }

  Serial.println("--");

}