int widthHeight;

void setup() {
  widthHeight = 600;
  size(widthHeight,widthHeight);
  stroke(255,0,0);
  fill(0,0,255);
}

void draw() {
  
  ellipse(mouseY,mouseX, 100, 100);
  ellipse(mouseX,mouseY,20,20);

}



