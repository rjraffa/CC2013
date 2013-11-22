//Keeping Score
//rjraffa
//11/22/13

int[] score = new int[3];

PFont font;

void setup(){
  size(600,800);
  font = loadFont("Arial-Black-48.vlw");
}

void draw() {
  
  background(255);
  
  //red box
  if (mousePressed && mouseX > 50 && mouseX < 250 && mouseY > 50 && mouseY < 250) {
    fill(255,0,0);
  } else {
    fill(200,0,0);
  }
  rect(50,50,200,200);
  
  //red text
  fill(255,0,0);
  textFont(font, 24);
  textAlign(CENTER);
  text("Red Clicks: " + score[0], 400, 150);
  
  //green box
  if (mousePressed && mouseX > 50 && mouseX < 250 && mouseY > 300 && mouseY < 500) {
    fill(0,255,0);
  } else {
    fill(0,200,0);  
  }
  rect(50,300,200,200);
  
  //green text
  fill(0,255,0);
  textFont(font, 24);
  textAlign(CENTER);
  text("Green Clicks: " + score[1],  400, 400);

  //blue box
  if (mousePressed && mouseX > 50 && mouseX < 250 && mouseY > 550 && mouseY < 750) {
    fill(0,0,255);
  } else {
    fill(0,0,200);    
  }
  rect(50,550,200,200);
  
  //blue text
  fill(0,0,255);
  textFont(font, 24);
  textAlign(CENTER);
  text("Blue Clicks: " + score[2], 400, 650);
  
}


void mouseReleased() {
  
  if (mouseX > 50 && mouseX < 250 && mouseY > 50 && mouseY < 250){
    score[0]++;
  } else if (mouseX > 50 && mouseX < 250 && mouseY > 300 && mouseY < 500){
    score[1]++;
  } else if (mouseX > 50 && mouseX < 250 && mouseY > 550 && mouseY < 750){
    score[2]++;
  }


  
}
