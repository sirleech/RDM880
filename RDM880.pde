//For Arduino Mega

byte MF_GET_SNR[8] = {0xAA, 0x00, 0x03, 0x25, 0x26, 0x00, 0x00, 0xBB};

void setup()  
{
  Serial.begin(115200);

  // No longer using NewSoftSerial but instead an Arduino Mega
  Serial1.begin(9600);

  Serial.println("setup() ends");
}

void loop()
{
  Serial1.write(MF_GET_SNR, 8);
  delay(50);
  
  while(Serial1.available() > 0) {
    Serial.print(Serial1.read(), HEX);
    Serial.print(" ");
  }
    
  Serial.println("--");
}
