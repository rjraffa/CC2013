/*
 * Tour Guide
 *
 * CC Fall 2013
 * by Ryan Raffa
 * 09/24/13
 */

PImage tourGuide [] = new PImage [3];

int posX;
int posY;

int counter;

void setup() {
  size(600,450);
  background(255);
  
  tourGuide[0] = loadImage("bobRoss1.jpg");
  tourGuide[1] = loadImage("BobRoss2.jpg");
  tourGuide[2] = loadImage("bobRoss3.jpg");
  
  posX = 0;
  posY = 0;
  
}

void draw() {
  
  background(0);
  
  image(tourGuide[counter], posX, posY);

}

void mousePressed() {
 counter++;
 
 if (counter > 2) {
   counter = 0;  
 }
  
}
