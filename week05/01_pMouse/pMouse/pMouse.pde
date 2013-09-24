/*
 * pMouse
 *
 * CC Fall 2013
 * by Ryan Raffa
 * 09/24/13
 */

int xPos;
int yPos;

void setup() {
 
 size(600,600);
 background(255);
 
 xPos = 0;
 yPos = 0;

}

void draw() {

  line(xPos,yPos, pmouseX,pmouseY);
  
}

void mousePressed() {
 
  xPos = mouseX;
  yPos = mouseY;
 
  
}
