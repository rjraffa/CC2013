/*
 * Reflections
 * To show ways to reflect drawings
 *
 * CC Fall 2013
 * by Ryan Raffa
 * 10/04/13
 */
 
import processing.pdf.*;

PVector circleSize;

void setup() {
  size(800,800);
  
  circleSize = new PVector(5.0,5.0);

  beginRecord(PDF, "everything.pdf");
}

void draw() {
  
 circleSize.set(random (6,20), random (6,20));

 if (mousePressed) {
    if(mouseX < width/2) {
      fill(255,0,0);
      ellipse(mouseX, mouseY, circleSize.x, circleSize.y);
      fill(0,255,0);
      ellipse(width-mouseX, mouseY, circleSize.x, circleSize.y);
    }
 }
  
}


// Make the PDF when the mouse is pressed
void keyPressed() {
    if (key == 'q') {
      endRecord();
      exit();
    }
}
