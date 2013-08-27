int widthHeight;
int circleSize;

void setup() {
  widthHeight = 600;
  size(widthHeight,widthHeight);
  
  circleSize = 10;
  
  stroke(255,0,0);
  fill(0,0,255);
}

void draw() {
  
  circleSize = circleSize+1;
  ellipse(mouseX,mouseY, circleSize, circleSize);

}



