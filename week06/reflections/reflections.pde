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
float howFar;

void setup() {
  size(800,800);
  
  circleSize = new PVector(5.0,5.0);
  howFar = 0.0;
  
  beginRecord(PDF, "everything.pdf");

  background(255);

}

void draw() {
  
 noStroke();

 howFar = dist(pmouseX, pmouseY, mouseX, mouseY); 
 howFar = map (howFar, 0, 100, 0, 255); 

 circleSize.set(howFar, howFar);

 if (mousePressed) {
    if(mouseX < width/2) {
      fill(random(0,255),0,200,howFar);
      ellipse(mouseX, mouseY, 100, 100);
      ellipse(width-mouseX, mouseY, 100, 100);
    }
 
    if(mouseX > width/2) {
      fill(0,random(0,255),200,howFar);
      ellipse(mouseX, mouseY, 100, 100);
      ellipse(width-mouseX, mouseY, 100, 100);
    }
 
 
 }
  
}


// Make the PDF when q is pressed
void keyPressed() {
    if (key == 'q') {
      endRecord();
      exit();
    }
}
