/*
 * Nyan Cat
 * Load a local image
 *
 * CC Lab Fall 2013
 * by Ryan Raffa
 * 09/09/13
 */
 
//Here are the global variables
PImage nyanCat;

int posX;
int posY;

void setup() {
  size(250,250);
  
  //Here is where we import the local image
  //and assign it to the nyanCat global variable
  nyanCat = loadImage("nyan-cat.png");
  
  posX = 50;
  posY = 50;
}

void draw() {
  
  background(255,255);
  
  //Here is where we draw the image
  //The X and Y positions are variables posX and posY
  image(nyanCat, posX, posY);

}
