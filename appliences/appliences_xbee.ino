const char MyIDs [3] = {'B','C','D'};
const int triggerPins [3] = {13, 12, 11};
int input;
boolean states[3] = {false,false,false};

void setup()
{
 for(int i = 0; i < 3; i++)
{
 pinMode(triggerPins [i], OUTPUT);
} 
 Serial.begin(9600);
}

void loop()
{
  if(Serial.available() && id_matches(Serial.read()))
  {
      states[input] = !states[input];
      digitalWrite(triggerPins[input], states[input]);
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

