const char myid = 'D';
const tvOnOff = 13;
void setup()
{
 pinMode(tvOnOff, OUTPUT);
 Serial.begin(9600); 
}
void loop()
{
  if(((Serial.available())) &&((char)Serial.read()==myid))
  {
    digitalWrite(tvOnOff,HIGH);
    delay(500);
    digitalWrite(tvOnOff,LOW);
  }
}
