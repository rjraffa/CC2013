/*
 * Shader
 * To show nested for loops
 * and multiple dimension arrays
 *
 * CC Fall 2013
 * by Ryan Raffa
 * 10/04/13
 */
 
int cols;
int rows;

int[][] myArray;

void setup() {
  size(255,255);
  cols = width;
  rows = height;
  // Declare 2D array
  myArray = new int[rows][cols];
  
  // Initialize 2D array values
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      myArray[i][j] = int(j);
    }
  }

}

void draw() {
  // Draw points
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      stroke(myArray[i][j]);
      point(i,j);
    }
  }
}
