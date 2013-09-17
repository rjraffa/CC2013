/**
 * Class Wave Example
 * CC Lab Fall 2013
 *
 * by Ryan Raffa
 * 09/17/13
 */

//Here are the global variables
PImage  wave;

int     radius, boatRadius;
float   frequency, position, positionTwo, positionAdder;
float   posOne, posTwo, posThree, posFour;

//for boat
PImage  boat;
float   boatFrequency;
float   boatPosition;
float   boatPositionAdder;
float     posX, posY;

void setup() {
  size(600,600);
  
  wave = loadImage("wave.png");
  boat = loadImage("boat.png");

  posX = 0;
  posY = 0;

    //Sets the magnitude
  radius        = 50;
  boatRadius     = 30;
  
  //Sets rate of motion
  frequency     = 200;
  boatFrequency = 300;
  
  //Provides initial position value
  position      = 0;
  positionTwo   = PI/2;
  boatPosition  = PI;
  
  //**This is important**
  //This specifies the increment taken for each draw cycle
  //A way to think of this is that we are taking a circle, which is two pi in radians
  //And breaking it up into 44,100 pieces (see http://en.wikipedia.org/wiki/44,100_Hz)
  //Our frequency is then saying how many steps to take around the circle each cycle
  //And positionAdder is that incremental value in radians
  positionAdder = ( (float)frequency / 44100) * TWO_PI;  
  boatPositionAdder = ( (float)boatFrequency / 44100) * TWO_PI;
}


void draw() {
  
  background(255,255);
  translate(-100,0);
  
  posX += 2;
  
  if (posX >= width+(boat.width/2)) {
    posX = -boat.width;
  }

  //Increment the position of the object
  position     += positionAdder;
  positionTwo  += positionAdder;
  boatPosition += boatPositionAdder;

  posOne = oscillationPositive(position, radius);
  posTwo = oscillationNegative(position, radius);
  posThree = oscillationPositive(positionTwo, radius);
  posFour  = oscillationNegative(positionTwo, radius);
  
  posY = oscillationPositive(boatPosition, boatRadius);
  posY += 180;

  image(wave, posThree, posOne);
  image(boat, posX, posY);
  image(wave, posFour, posTwo);

}


//Instead of creating a function that is void (ie returns nothing)
//Here are two functions that return a float value

float oscillationPositive(float position, float theRadius) {

  float pos = sin(position);
  pos = pos * theRadius;

  //this is to keep the variable position at or under Two Pi
  while (position > TWO_PI) { position -= TWO_PI; }

  //this tells the function what value to return
  return pos;
}

float oscillationNegative(float position, float theRadius) {

  //Subtract PI to provide a value on the opposite side in radians
  float pos = sin(position-PI);
  pos = pos * theRadius;
  
  //this is to keep the variable position at or under Two Pi
  while (position > TWO_PI) { position -= TWO_PI; }

  //this tells the function what value to return
  return pos;
}
