/*
 * My First Class
 *
 * Cfreative Computing Fall 2013
 * by Ryan Raffa
 * 9/24/13
 */

Ball myBall1;
Ball myBall2;
Ball myBall3;

void setup() {
  size(600,600);
  background(0);
  smooth();
  noStroke();

  myBall1 = new Ball(100,100,50,50,color(255,0,0));
  myBall2 = new Ball(200,200,75,75,color(0,255,0));
  myBall3 = new Ball(400,400,100,100,color(0,0,255));

}

void draw() {
  myBall1.drawBall();
  myBall2.drawBall();
  myBall3.drawBall();
}
