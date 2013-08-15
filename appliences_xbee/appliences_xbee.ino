const char MyIDs [3] = {'B','C','D'};
const int triggerPins [3] = {13, 12, 11};
int input;
boolean powerSwitchState = false;

void setup()
{
 for(int i = 0; i < 3; i++)
{
 pinMode(triggerPins [i], OUTPUT);
} 
 Serial.begin(19200);
}

void loop()
{
  if(Serial.available() && id_matches(Serial.read()))
  {
    if(input == 0)
    {
      powerSwitchState = !powerSwitchState;
      digitalWrite(triggerPins[input], powerSwitchState);
    }
    else
    {
     digitalWrite(triggerPins[input], HIGH);
     delay(500);
     digitalWrite(triggerPins[input], LOW);
    }
  }
}

boolean id_matches(char c)
{
 for(int i = 0; i < 3; i++)
 {
  if(c == MyIDs[i])
  {
    input = i;
    return true; 
  }
 }
 return false; 
}

