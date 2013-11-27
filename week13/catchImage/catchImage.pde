/*
 * Catch Image
 *
 * Creative Computing Fall 2013
 * by Ryan Raffa
 * 11/27/13
 */

Ball ball1;
PImage theHoop;
PVector hoopPos;

int madeBaskets;
int missedBaskets;

PFont arialFont;

void setup() {
  size(700,800);
  background(0);
  smooth();
  noStroke();
  
  //makes all images in the entire program centered on x,y positions
  imageMode(CENTER);

  //loading the font I want to use, the size, and alignment
  arialFont = loadFont("Arial-Black-48.vlw");
  textFont(arialFont, 24);
  textAlign(CENTER);
  
  theHoop = loadImage("B-Ball_Retro_Net.png");
  hoopPos = new PVector(width/2, height-theHoop.height/2);

  PImage theBall;
  theBall = loadImage("Basketball.png");
    
  ball1 = new Ball(200,200,theBall.width,theBall.height,theBall,6);

}

void draw() {

  background(255);

  //this checks to see if the basketball is in the hoop

  //this updates the position of the bouncing basketball
  ball1.updatePosition(hoopPos);
  
  //this draws the basketball
  ball1.drawBall();
  
  //the hoop position function (see below)
  hoopPosition();
  
  //this draws the hoop
  image(theHoop, hoopPos.x, hoopPos.y);
  
  fill(70);
  text("Made baskets: " + madeBaskets, width-160, 60);
  text("Missed baskets: " + missedBaskets, width-160, 100);

}

void hoopPosition() {
 
 if (keyPressed) {
    if (key == CODED) {
      if (keyCode == RIGHT && hoopPos.x < width- theHoop.width/2) {
        hoopPos.x+=6;
      }
      
      else if (keyCode == LEFT  && hoopPos.x > theHoop.width/2 ) {
        hoopPos.x-=6;
      }

    }
  }

}
