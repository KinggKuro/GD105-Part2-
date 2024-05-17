// FOR THIS PIECE, I PRETTY MUCH JUST EXPERIMENTED WITH LOOP STATEMENTS

void setup() {
  size(700, 700);
  background(255);
  rectMode(CENTER);
}

void draw(){
  fill(255);
  rect(width/2, height/2, width, height);
  
  noFill();
  strokeWeight(3);
  
  // FIRST LAYER
  float i = 0;
  while (i < 1200) {
    ellipse(width/2, height/2, 415 + i, 215 + i);
    line(-670 + i, 55 + i, 750 + i, 0 + i);
    circle(width/2, height/2, 1400 - i);
    i = i + 20;
  }
  
  // SECOND LAYER
  strokeWeight(5);
  float j = 0;
  while (j < 300) {
    circle(width/2, height/2, 400 - j);
    j = j + 20;
  }
  
  // THIRD LAYER
  strokeWeight(7);
  float k = 0;
  while (k < 150) {
    circle(width/2, height/2, 150 - k);
    k = k + 30;
  }
}
