float[] asteroidXPos = { 100, 500};
float[] asteroidYPos = { -100, -200};
float[] asteroidDist = new float[3];
float[] asteroidAngle = new float[3];

float[] asteroidDistDiff = new float[3];
float[] asteroidAngleDiff = new float[3];

PVector origin;
PVector cannonPos;
PVector bulletPos;
PVector rotatedPoint;

float cannonAngle;
float bulletAngle;
float bulletDist;

boolean fireBullet;

void setup() {
  
  size(600,600); 

  //starting point  
  origin = new PVector(0, 0);

  //position of cannon
  cannonPos = new PVector(300, 500);

  //put bullet in the same starting position as cannon
  bulletPos = new PVector(300, 500);

  //point that is rotated
  rotatedPoint = new PVector(0, 0);
  
  fireBullet = false;
}

void draw() {
  
  background(100);

  //move the asteroids  
  for (int i = 0; i < 2; i++) {
    
    //rate that they fall
    asteroidYPos[i] += 4;
    
    //moves them back to their start position
    if(asteroidYPos[i] > height+100) {
      asteroidYPos[i] = -100;
    }
    
  }
  
  //Move the bullet (based on mousePressed)
  if (fireBullet) {
    //speed of bullet
    bulletPos.y-=6;    
  }
  
  //reset bullet
  if(bulletDist >= 600) {
  
    bulletPos.x = cannonPos.x;
    bulletPos.y = cannonPos.y;
    
    rotatedPoint.x = 0;
    rotatedPoint.y = 0;
    
    bulletAngle = 0;
    
    //println("rotatedPoint.x: " + rotatedPoint.x);
    //println("rotatedPoint.y: " + rotatedPoint.y);
    
    fireBullet = false;
  
  }
  
  //get cannon angle  
  cannonAngle = atan2(mouseY - cannonPos.y, mouseX - cannonPos.x);
  cannonAngle -= PI/2;  

  println("cannonAngle: "+ cannonAngle);
  println("bulletAngle: "+ bulletAngle);
  println(PI/4);
  println(PI/3);
  println(PI/2);
  println(PI);
  println(PI+(PI/4));
  println(PI+(PI/3));
  println(PI+(PI/2));
  //calculate bullet distance  
  bulletDist = dist(cannonPos.x, cannonPos.y, bulletPos.x, bulletPos.y);
  
  
  //calculate asteroid angle, distance, and difference  
  for (int i = 0; i < 2; i++) {
    asteroidDist[i] = dist(asteroidXPos[i], asteroidYPos[i], cannonPos.x, cannonPos.y);
    asteroidAngle[i] = atan2(asteroidXPos[i] - cannonPos.x, asteroidYPos[i] - cannonPos.y);
    
    println("asteroidDist["+i+"]: " + asteroidDist[i]);
    println("asteroidAngle["+i+"]: " + asteroidAngle[i]);
    
    asteroidDistDiff[i] = abs(asteroidDist[i] - bulletDist);
    asteroidAngleDiff[i] = abs(asteroidAngle[i] - bulletAngle);
    //adjust for cannonPos rotation
    asteroidAngleDiff[i] -= PI/2;;

    println("asteroidDistDiff["+i+"]: " + asteroidDistDiff[i]);
    println("asteroidAngleDiff["+i+"]: " + asteroidAngleDiff[i]);

    //check for collision
    if(asteroidDistDiff[i] < 10.0 && asteroidAngleDiff[i] < 0.1 && fireBullet==true) {
      //do something to the asteroid
      //in this example, I move it off the screen
      asteroidXPos[i] = -100;
      
      println("WIN! with: " + i);
    }
  }
  
  //cannon
  pushMatrix();
    translate(cannonPos.x, cannonPos.y);
    rotate(cannonAngle);
    
    strokeWeight(6);
    line(0,0,0,100);
  
  popMatrix();

  //bullet
  pushMatrix();
    //first move to a new x/y to compensate for rotation
    translate(rotatedPoint.x,rotatedPoint.y);
    //then rotate
    rotate(bulletAngle);
    //then move the bullet
    translate(bulletPos.x,bulletPos.y);
    ellipse(0,0,50,50);
  
  popMatrix();
  
  //asteroids
  for (int i = 0; i < 2; i++) {
   
    ellipse(asteroidXPos[i],asteroidYPos[i], 25, 25);
    
  }
  
  //print bullet x/y to console
  //println("bulletPos.x: " + bulletPos.x);
  //println("bulletPos.y: " + bulletPos.y);

}

void mousePressed() {
 
  //only be able to fire one bullet
  bulletPos.set(300, 500);

  
   bulletAngle = cannonAngle+PI;
   fireBullet = true;
   
   //println("bulletPos.x: " + bulletPos.x);
   //println("bulletPos.y: " + bulletPos.y);
  
   
   rotatedPoint = newRotatedPoint(origin, bulletPos, bulletAngle);
   
   rotatedPoint.x = bulletPos.x - rotatedPoint.x;
   rotatedPoint.y = bulletPos.y - rotatedPoint.y;
  
  // rotatedPoint.x = rotatedPoint.x - bulletPos.x;
  // rotatedPoint.y = rotatedPoint.y - bulletPos.y;
   
   //println("rotatedPoint.x Change: " + rotatedPoint.x);
   //println("rotatedPoint.y Change: " + rotatedPoint.y);
 
}

PVector newRotatedPoint(PVector origin, PVector point, float radian) {   
    float s = sin(radian);   
    float c = cos(radian);  

    // translate point back to origin:  
    point.x -= origin.x;   
    point.y -= origin.y;   

    // rotate point   
    float xnew = point.x * c - point.y * s;   
    float ynew = point.x * s + point.y * c; 

    // translate point back to global coords:
    PVector TranslatedPoint;
    TranslatedPoint = new PVector(0, 0);
    TranslatedPoint.x = xnew + origin.x;  
    TranslatedPoint.y = ynew + origin.y; 

    //println("TranslatedPoint.x: " + TranslatedPoint.x);
    //println("TranslatedPoint.y: " + TranslatedPoint.y);

    return TranslatedPoint;
} 

