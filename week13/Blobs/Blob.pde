class Blob {
  
  // Properties
  int x;
  int y;
  int blobSize;
  int blobAdjust;
  color c;
  int xSpeed = 5;
  int ySpeed = 5;
  
  float blobPositions [] = new float [10];

  // Constructor
  Blob(int x,int y,int blobSize, int blobAdjust, color c, int s) {
    this.x = x;
    this.y = y;
    this.blobSize = blobSize;
    this.blobAdjust = blobAdjust;
    this.c = c;
    
    this.xSpeed = s;
    this.ySpeed = s;
    //or for shorthand, you can do this...
    // this.xSpeed = this.ySpeed = s;
  }

  // Methods
  void drawBall() {
    fill(this.c);

    beginShape();
    curveVertex(blobPositions[0], blobPositions[1]);
    curveVertex(blobPositions[2], blobPositions[3]);
    curveVertex(blobPositions[4], blobPositions[5]);
    curveVertex(blobPositions[6], blobPositions[7]);
    curveVertex(blobPositions[8], blobPositions[9]);
    curveVertex(blobPositions[0], blobPositions[1]);
    endShape();


  }
  
  void updatePosition() {
    if((this.x > width-this.blobSize/2)
    || (this.x < this.blobSize/2)) {
      this.xSpeed = -this.xSpeed;
    }

    if((this.y > height+this.blobSize)) {
      this.y = -this.blobSize;
    }


    
    this.x += this.xSpeed;
    this.y += this.ySpeed;
    
    blobPositions[0] = this.x+random(-blobAdjust,blobAdjust);
    blobPositions[1] = this.y-(blobSize+random(-blobAdjust,blobAdjust));
    blobPositions[2] = this.x+(blobSize+random(-blobAdjust,blobAdjust));
    blobPositions[3] = this.y+random(-blobAdjust,blobAdjust);
    blobPositions[4] = this.x+random(-blobAdjust,blobAdjust);
    blobPositions[5] = this.y+(blobSize+random(-blobAdjust,blobAdjust));
    blobPositions[6] = this.x-(blobSize+random(-blobAdjust,blobAdjust));
    blobPositions[7] = this.y+random(-blobAdjust,blobAdjust);
    blobPositions[8] = this.x+random(-blobAdjust,blobAdjust);
    blobPositions[9] = this.y-(blobSize+random(-blobAdjust,blobAdjust));
  }
}
