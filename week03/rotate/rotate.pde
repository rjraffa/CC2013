//global variable
int myRotation;

void setup() {
  size(600,600);
  myRotation = 0;
}

void draw() {
  background(150);

  myRotation+=2;
  float rad = radians(myRotation);
  
  translate(width/2, height/2);
  rotate(rad);
  rect(-26, -26, 52, 52);
  
}
