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
  
 circleSize.set(random (3,10), random (3,10));

 if (mousePressed) {
    if(mouseX < width/2) {
      ellipse(mouseX, mouseY, circleSize.x, circleSize.y);
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
