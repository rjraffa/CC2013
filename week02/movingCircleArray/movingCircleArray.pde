//These are global variables
int myRed;
int myGreen;
int myBlue;

//this is the array
int [] myXPosArray = {0,0,0};

void setup() {
  //this is a local variable
  size(600,600);
  
  myXPosArray[0] = 0;
  myXPosArray[1] = 0;
  myXPosArray[2] = 0;

}

void draw() {
  background(100);
  
//  myXPosArray[0] = myXPosArray[0] + 1;
  myXPosArray[0] += 1;
  myXPosArray[1] += 5;
  myXPosArray[2] += 10;
  
  myRed = 255;
  myGreen = 0;
  myBlue = 0;
  
  fill(myRed, myGreen, myBlue, 100);
  ellipse(myXPosArray[0],200,200,200);
  
  myRed = 0;
  myGreen = 255;
  myBlue = 0;
  
  fill(myRed,myGreen,myBlue, 100);
  ellipse(myXPosArray[1],200,200,200);
  
  myRed = 0;
  myGreen = 0;
  myBlue = 255;
  
  fill(myRed,myGreen,myBlue,100);
  ellipse(myXPosArray[2],300,200,200);
  
  if (myXPosArray[0] > 700) {
     myXPosArray[0] = -100;
  }

  if (myXPosArray[1] > 700) {
    myXPosArray[1] = -100;
  }

  if (myXPosArray[2] > 700) {
    myXPosArray[2] = -100;
  }
  
}
