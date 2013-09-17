/*
 * xPatterns
 * Lines with for loops
 *
 * CC Fall 2013
 * by Ryan Raffa
 * 09/17/13
 */
 
int xOne, yOne;
int xTwo, yTwo;
int xThree, yThree;
int xFour, yFour;


void setup() {
 
 size(600,600);
 
 xOne = -10;
 yOne = -10;

 xTwo = -10;
 yTwo = 10;

 xThree = 10;
 yThree = -10;

 xFour = 10;
 yFour = 10;
 
 
}

void draw() {
 //background(255);
 translate(width/2,height/2);
 
 for (int i = 0; i < 20; i++) {
  
   line(xOne*i,yOne*i,xTwo*i,yTwo*i);
   line(xThree*i,yThree*i,xFour*i,yFour*i);
   
 }
  
}
