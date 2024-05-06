PFont burbank;

void setup(){
  size(700, 700);
  background(225);
  
  burbank = createFont("BurbankBigRegular-Black", 100); 
  
  textAlign(CENTER);
  rectMode(CENTER);
  textFont(burbank);
}

void draw(){
  fill(255);
  noStroke();  
  rect(width/2, height/2, width, height);
    
  fill(#B8FBFC);
  stroke(#619AA5);
  strokeWeight(10);
  rect(width/2, height/2, 660, 400);
  resetMatrix();
  
  
  fill(#619AA5);
  text("THE MUNDANE", 350, 305);
  text("IS TO BE", 350, 385);
  text("CHERISHED", 350, 465);
  resetMatrix();
  
  fill(#B8DDFC, 125);
  text("CHERISHED", 350, 461);
  
  stroke(#619AA5);
  strokeWeight(5);
  fill(255, 50);
  rect(441, 268, 450, 87);
  resetMatrix();
  
  fill(#619AA5);
  circle(0, 700, 450);
  
  
  
  fill(#B8F7FC);
  circle(50, 520, 69);
  circle(10, 520, 64);
  circle(19, 148, 64);
  circle(61, 620, 195);
  circle(681, 148, 64);
  circle(681, 552, 64);
  circle(109, 578, 110);
  
  fill(#619AA5);
  circle(22, 592, 55);
  ellipse(100, 580, 17, 30);
  ellipse(130, 580, 17, 30);
  
  noStroke();
  fill(0);
  circle(30, 580, 22);
  
}
