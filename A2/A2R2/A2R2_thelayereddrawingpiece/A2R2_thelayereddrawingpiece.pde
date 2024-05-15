int penSize;

PVector marginA, marginB, marginC;

void setup(){
  size(1024, 1024);
  background(255);
  rectMode(CENTER);
  
  penSize = 40;
  
  marginA = new PVector(256, 0);
  marginB = new PVector(128, 0);
  marginC = new PVector(384, 0);
}

void draw(){
  fill(#141F15, 25);
  rect(width/2, height/2, width, height);
  
  float animationSpeed = frameCount*0.15;
  strokeWeight(3);
  
  //PINK CIRCLE
  fill(#810072);
  translate(width*0.50, height*0.50);
  rotate(-animationSpeed);
  circle(marginB.x + cos(frameCount*0.03)*60, marginB.y + sin(frameCount*0.03)*60, penSize);
  resetMatrix();
  
  //GREEN CIRCLE
  fill(#008105);
  translate(width*0.50, height*0.50);
  rotate(animationSpeed);
  circle(marginA.x + cos(frameCount*0.30)*45, marginA.y + sin(frameCount*0.30)*45, penSize);
  resetMatrix();
  
  //ORANGE CIRCLE
  fill(#E8BC0C);
  translate(width*0.50, height*0.50);
  rotate(-animationSpeed);
  circle(marginC.x + cos(frameCount*3)*90, marginC.y + sin(frameCount*3)*90, penSize);
  resetMatrix();
  
  
  
}
