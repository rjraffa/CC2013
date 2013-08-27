int widthHeight;
float myRandomNumber;

void setup() {
  widthHeight = 600;
  size(widthHeight,widthHeight);
  
}

void draw() {
  
  stroke(random(255),random(255),random(255));
  fill(random(255),random(255),random(255));

  ellipse(mouseX, mouseY,100, 100);

  myRandomNumber = random(255);
  println(myRandomNumber);


}



