// INSPIRATION: Ad Reinhardt, Abstract Painting, Red 1952 - https://www.moma.org/collection/works/78723

void setup(){
  background(255);
  size(300, 700);
  rectMode(CENTER);
}

void draw(){
  fill(#BF454D);
  rect(width/2, height/2, width, height);
  
  float squareSize = 200;
  
  fill(#AA5141);
  noStroke();
  square(0, 0, squareSize);
  square(300, 0, squareSize);
  square(0, 700, squareSize);
  square(300, 700, squareSize);
  
  fill(#FF3E1C);
  rect(150, 150, 300, 100);
  square(150, 250, 100);
  
  fill(#AA5141);
  rect(150, 350, 300, 100);
  
  fill(#FF3E1C);
  rect(150, 550, 300, 100);
  square(150, 450, 100);
  
}
