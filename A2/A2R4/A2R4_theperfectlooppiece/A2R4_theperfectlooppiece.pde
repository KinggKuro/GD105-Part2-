PImage avatar;
PVector beamA, auraA;

PFont death;

float beamSize;

void setup(){
  size(800, 800);
  background(255);
  rectMode(CENTER);
  textAlign(CENTER);
  
  avatar = loadImage("enigma.png");
  
  beamA = new PVector(0, 0);
  auraA = new PVector(48, 0);
  
  death = createFont("BurbankBigRegular-Black", 50);
}

void draw(){
  fill(#061700, 25);
  rect(width/2, height/2, width, height);
  textFont(death);
  
  // THE ELEMENTAL AVATAR
  avatar.resize(0, 400);
  image(avatar, 220, 220);
  
  // CHARGED BEAMS
  beamSize = 40;
  
  fill(#7BFF48, 200);
  noStroke();
  
  translate(285, 315);
  rotate(frameCount*0.03);
  square(beamA.x, beamA.y, beamSize);
  resetMatrix();
  
  translate(285, 315);
  rotate(frameCount*-0.03);
  square(beamA.x, beamA.y, beamSize);
  resetMatrix();
  
  
  translate(555, 315);
  rotate(frameCount*0.03);
  square(beamA.x, beamA.y, beamSize);
  resetMatrix();
  
  translate(555, 315);
  rotate(frameCount*-0.03);
  square(beamA.x, beamA.y, beamSize);
  resetMatrix();
  
  fill(#EEFFE8, 125);
  translate(285, 315);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 20);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 30);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 50);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 65);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 80);
  resetMatrix();
  translate(555, 315);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 20);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 30);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 50);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 65);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 80);
  resetMatrix();
  
  // RADIATING AURA
  fill(#EEFFE8, 125);
  stroke(255, 25);
  strokeWeight(5);
  translate(235, 315);
  circle(auraA.x + cos(frameCount*0.30)*45, auraA.y + sin(frameCount*0.25)*50, 5);
  resetMatrix();
  
  translate(505, 315);
  circle(auraA.x + cos(frameCount*-0.30)*45, auraA.y + sin(frameCount*-0.25)*50, 5);
  resetMatrix(); 
  
  // GLOWING LOWER HANDS
  fill(#7DEA53, 105);
  noStroke();
  
  translate(300, 485);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 65);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 80);
  circle(0 + cos(frameCount*0.90)*1, 0 + sin(frameCount*0.90)*1, 35);
  circle(0 + cos(frameCount*0.90)*1, 0 + sin(frameCount*0.90)*1, 25);
  resetMatrix();
  
  fill(#CDFFB9, 255);
  translate(300, 485);
  circle(0 + cos(frameCount*0.90)*1, 0 + sin(frameCount*0.90)*1, 15);
  resetMatrix();
  
  fill(#7DEA53, 105);
  translate(540, 485);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 65);
  circle(beamA.x + cos(frameCount*0.90), beamA.y + sin(frameCount*0.30), 80);
  circle(0 + cos(frameCount*0.90)*1, 0 + sin(frameCount*0.90)*1, 35);
  circle(0 + cos(frameCount*0.90)*1, 0 + sin(frameCount*0.90)*1, 25);
  resetMatrix();
  
  fill(#CDFFB9, 255);
  translate(540, 485);
  circle(0 + cos(frameCount*0.90)*1, 0 + sin(frameCount*0.90)*1, 15);
  resetMatrix();
  
  translate(400, 700);
  text("I AM DEATH...I AM CHAOS.", 0, 0 + sin(frameCount*0.05)*10);
}
