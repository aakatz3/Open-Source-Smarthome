const char myIDFeed = 'A';
const int dirp = 12;
const int pwmp = 3;
const int brakep = 9;
const int magneticPin = 7;
void setup()
{
 pinMode(magneticPin, INPUT);
 pinMode(dirp, OUTPUT);
 pinMode(pwmp, OUTPUT);
 pinMode(brakep, OUTPUT);
 digitalWrite(dirp, HIGH);
 analogWrite(pwmp, 255/1.5);
 digitalWrite(brakep, HIGH);
 Serial.begin( 9600 );
}

void loop()
{
 if(Serial.available() && Serial.read()==myIDFeed)
 {
   digitalWrite(brakep, LOW);
   delay(1000);
   while(!digitalRead(magneticPin));
   delay(0);
   digitalWrite(brakep, HIGH);
 }
}

