class Ball {
  
  // Properties
  float x;
  float y;
  int w;
  int h;
  int xSpeed = 5;
  int ySpeed = 5;
  boolean isBasket;
  boolean keptScore;

  PImage theBall;
  // Constructor
  Ball(int x,int y,int w,int h, PImage theBall, int s) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.theBall = theBall;

    this.xSpeed = s+4;
    this.ySpeed = s;
    //or for shorthand, you can do this...
    // this.xSpeed = this.ySpeed = s;
    
    //to see if the basket was good
    isBasket = false;
    //to see if a score has been given
    keptScore = false;    
  }

  // Methods
  void drawBall() {
//    imageMode(CENTER);
    image(theBall, this.x, this.y);
  }
  
  void updatePosition(PVector hoopPos) {
        
    //this if statement checks for walls
    if ((this.x > width-this.w/2) || (this.x < this.w/2)) {
      this.xSpeed = -this.xSpeed;
    }

    float distanceOnSides;
    float distanceAbove;

     distanceOnSides = abs(this.x - hoopPos.x);
     distanceAbove = hoopPos.y - this.y;
     println("distanceOnSides: " + distanceOnSides);
     println("distanceAbove: " + distanceAbove);
     println("isBasket: " + isBasket);
          
    //checks if it was a made basket
    //depending on the size of the image, you may need to change these values
    if (distanceOnSides < 40 && distanceAbove < theHoop.height/2 && distanceAbove > 16 && isBasket == false) {
      isBasket = true;
    } 

    //if the basket is good
    if (isBasket) {
      //makes the ball go straight down
      this.x = hoopPos.x; 
      
      //if the score has not been tallied
      if (!keptScore) {
        madeBaskets++;
        keptScore = true; 
        println("madeBaskets: " + madeBaskets);
      } 
    }

    //adds score if basket is missed and nothing has been scored
    if (distanceAbove <= -15 && !isBasket && !keptScore) {
      missedBaskets++;
      println("missedBaskets: " + missedBaskets);
      keptScore = true;
    }

    //this checks to see if the ball passed the end of the screen 
    if(this.y > height + this.h/2) {
      isBasket = false;
      keptScore = false;
      this.y = 0 - this.h/2;      
    }
    
    this.x += this.xSpeed;
    this.y += this.ySpeed;
  
  }

}
