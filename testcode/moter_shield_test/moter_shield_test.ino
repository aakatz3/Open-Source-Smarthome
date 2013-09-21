/*
Function	pins per Ch. A	pins per Ch. B
Direction	      D12         D13
PWM	              D3	  D11
Brake	              D9	  D8
Current Sensing       A0       	  A1
*/
const int dirp = 12;
const int pwmp = 3;
const int brakep = 9;

void setup()
{
 pinMode(dirp, OUTPUT);
 pinMode(pwmp, OUTPUT);
 pinMode(brakep, OUTPUT);
 digitalWrite(dirp, HIGH);
 analogWrite(pwmp, 0);
 digitalWrite(brakep,LOW);
 Serial.begin(9600);
}
boolean dir = true;
int pwm = 0;
boolean brake = false;
void loop()
{
  if(Serial.available())
  {
   switch(Serial.read())
  {
   case 'd':
     dir = !dir;
     break;
   case '+':
     pwm++;
     break;
   case '-':
     pwm--;
     break;
   case 'b':
  
     brake = !brake;
     break;
  } 
 }
 analogWrite(pwmp, pwm);
 digitalWrite(brakep, brake);
 digitalWrite(dirp, dir);
}
