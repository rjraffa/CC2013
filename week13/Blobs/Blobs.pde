/*
 * Blobs
 *
 * Creative Computing Fall 2013
 * by Ryan Raffa
 * 11/19/13
 */

Blob blob1;
Blob blob2;

void setup() {
  frameRate(30);
  size(800,600);
  background(0);
  smooth();
  noStroke();
  blob1 = new Blob(200,200,100,10,color(0,255,0), 10);
  blob2 = new Blob(100,100,40,5,color(255,0,0), 8);
}

void draw() {
  
  background(255);
  
  blob1.updatePosition();
  blob1.drawBall();

  blob2.updatePosition();
  blob2.drawBall();

}
