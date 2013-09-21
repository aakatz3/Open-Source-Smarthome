/*
  Table of codes:
  Code  Function
    A   Dog Feeder
    B   Light
    C   Coffee Maker
    D   Radio
    E   TV Power
    F   Input
    G   Channel Up
    H   Channel Down
    I   Volume Up
    J   Volume Down
    K   Mute
    --------------------(Internal)----------------------
    L   Door Bell
    M   Room 1
    N   Room 2
    O   Room 3
    P   Room 4
*/


String messageFromCode(char code)
{
 switch(code)
 {
   case 'A':
     return "The%20dog%20feeder%20has%20activated.";
   case 'B':
     return "The%20light%20has%20been%20switched%20on%20or%20off.";
   case 'C':
     return "Making%20coffee.";
   case 'D':
     return "The%20radio%20has%20been%20switched%20on%20or%20off.";
   case 'E':
     return "The%20TV%20has%20been%20switched%20on%20or%20off.";
   case 'F':
     return "The%20input%20of%20the%20TV%20has%20changed.";
   case 'G':
     return "TV%20channel%20increased.";
   case 'H':
     return "TV%20channel%20decreased.";
   case 'I':
     return "TV%20volume%20increased.";
   case 'J':
     return "TV%20volume%20decreased.";
   case 'K':
     return "TV%20has%20been%20muted%20unmuted.";
   case 'L':
     return "Doorbell%20rang.";
   case 'M':
     return "Motion%20detected%20in%20room%20one.";
   case 'N':
     return "Motion%20detected%20in%20room%20two.";
   case 'O':
     return "Motion%20detected%20in%20room%20three.";
   case 'P':
     return "Motion%20detected%20in%20room%20four.";
   default:
     return "Something%20unknown%20happened!.";
   } 
   return "ShouldNotReachHere"
}


