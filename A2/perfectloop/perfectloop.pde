PVector topLeft1, topLeft2, topRight1, topRight2,

        triLeft1, triRight1, triLeft2, triRight2, triCenter;

float ballSize = 45;

void setup(){
  size(1000, 1000);
  background(#2F8177);
  noStroke();
  
  rectMode(CENTER);
  
//TOP ROW BALL LOCATIONS
  topLeft1 = new PVector(width*0.20, height*0.20);
  topLeft2 = new PVector(width*0.40, height*0.20);
  topRight1 = new PVector(width*0.60, height*0.20);
  topRight2 = new PVector(width*0.80, height*0.20);
  
//TRIANGLES ALLOCATIONS IN CORNERS
  triLeft1 = new PVector(width*0.15, height*0.15);
  triLeft2 = new PVector(width*0.15, height*0.90);
  triRight1 = new PVector(width*0.90, height*0.15);
  triRight2 = new PVector(width*0.90, height*0.90);
  
}

void draw(){  
  fill(#2F8177);
  rect(width/2, height/2, width, height);

  float rotationSpeed = frameCount * 0.02;
  
  fill(#B266CE);
  
// TOP ROW OF BALLS
  circle(topLeft1.x + cos(frameCount*0.03)*90, topLeft1.y + sin(frameCount*0.06)*90, ballSize);
  circle(topLeft2.x + cos(frameCount*0.03)*65, topLeft2.y + sin(frameCount*0.06)*90, ballSize);
  circle(topRight1.x + cos(frameCount*0.03)*-65, topRight1.y + sin(frameCount*0.06)*90, ballSize);
  circle(topRight2.x + cos(frameCount*0.03)*-90, topRight2.y + sin(frameCount*0.06)*90, ballSize);
  resetMatrix();
  
// WHITE SQUARE'S IN MIDDLE
  fill(255);
  translate(width/2, height/2);
  rotate();
  rect(0, 0, 440, 440);
  resetMatrix();
  
// CENTERED SQUARE #1
  fill(#D104A5, 20);
  translate(width/2, height/2);
  rotate(rotationSpeed);
  rect(0, 0, 500, 500);
  resetMatrix();

// CENTERED SQUARE #2
  fill(#D104A5, 75);
  translate(width/2, height/2);
  rotate(-rotationSpeed);
  rect(0, 0, 500, 500);
  resetMatrix();

// TRIANGLES IN THE CORNERS
  fill(#8F49DB);
  translate(triLeft1.x, triLeft1.y);
  rotate(frameCount * 0.02);
  triangle(60, 0, -60, 0, 0, 60);
  resetMatrix();
  
  fill(#8F49DB);
  translate(triLeft1.x, triLeft1.y);
  rotate(frameCount * -0.02);
  triangle(60, 0, -60, 0, 0, 60);
  resetMatrix();
  
}
