/*
 * Train
 *
 * Creative Computing Fall 2013
 * by Ryan Raffa
 * 9/24/13
 */

import processing.video.*;
Movie myMovie;

void setup() {
  size(746, 538);
  myMovie = new Movie(this, "train.mov");
  myMovie.play();
}

void draw() {
  image(myMovie, 0, 0);
}

void movieEvent(Movie m) {
  m.read();
}
