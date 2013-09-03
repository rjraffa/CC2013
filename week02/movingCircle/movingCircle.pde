//These are global variables
int myRed;
int myGreen;
int myBlue;

int myXPos;

void setup() {
  //this is a local variable
  size(600,600);
  
  myXPos = 0;

}

void draw() {
  background(100);
  
  myXPos = myXPos + 1;
  
  myRed = 255;
  myGreen = 0;
  myBlue = 0;
  
  fill(myRed, myGreen, myBlue, 100);
  ellipse(myXPos,200,200,200);
  
  myRed = 0;
  myGreen = 255;
  myBlue = 0;
  
  fill(myRed,myGreen,myBlue, 100);
  ellipse(300,200,200,200);
  
  myRed = 0;
  myGreen = 0;
  myBlue = 255;
  
  fill(myRed,myGreen,myBlue,100);
  ellipse(250,300,200,200);
  
  if (myXPos > 700) {
    myXPos = -100;
  }
  
}
