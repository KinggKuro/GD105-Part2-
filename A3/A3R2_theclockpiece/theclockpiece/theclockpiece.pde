// USED AN EXAMPLE FROM PROCESSING.ORG (https://processing.org/examples/clock.html)

PImage earth;

PFont fortnite;

int distx, disty;
float secsRadius;
float minsRadius;
float hoursRadius;
float clockDiameter;

void setup(){
  size(1024, 900);
  background(255);
  rectMode(CENTER);
  textAlign(CENTER);
  
  int radius = min(width, height) / 2;
  secsRadius = radius * 0.60;
  minsRadius = radius * 0.70;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.15;
  
  distx = width/2;
  disty = 550;
  
  fortnite = createFont("BurbankBigRegular-Bold", 50);
  textFont(fortnite);
}

void draw(){
  fill(#FFF7DB);
  rect(width/2, height/2, width, height);
  
  // THE CURRENT TIME
  fill(#8E8A6A);
  textSize(100);
  text(second(), 790, 250 + sin(frameCount*0.03)*10);
  text(minute(), 680, 250 + sin(frameCount*0.03)*10);
  text(hour(), 570, 250 + sin(frameCount*0.03)*10);
  text(day(), 460, 250 + sin(frameCount*0.03)*10);
  text(month(), 365, 250 + sin(frameCount*0.03)*10);
  text(year(), 220, 250 + sin(frameCount*0.03)*10);
  
  // DESCRIPTION OF THE CURRENT TIME
  textSize(50);
  text("TODAY IS", 220, 155);
  text(month(), 335, 155);
  text("/", 358, 155);
  text(day(), 390, 155);
  text(",", 420, 155);
  text(year(), 490, 155);
  
  // VISUAL DESCRIPTION OF TIME (CLOCK)
  
  //CLOCK'S BACKGROUND
  fill(#393622);
  ellipse(width/2, 550, clockDiameter + 60, clockDiameter + 60);
  
  fill(#8B8026);
  noStroke();
  ellipse(distx, disty, clockDiameter, clockDiameter);
  
  float secs = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float mins = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
  float hrs = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
 
 // SECOND, MINUTE AND HOUR HANDS
  stroke(255);
  strokeWeight(1);
  line(distx, disty, distx + cos(secs) * secsRadius, disty + sin(secs) * secsRadius);
  strokeWeight(2);
  line(distx, disty, distx + cos(mins) * minsRadius, disty + sin(mins) * minsRadius);
  strokeWeight(4);
  line(distx, disty, distx + cos(hrs) * hoursRadius, disty + sin(hrs) * hoursRadius);
  
  // NUMBERS 00 - 60 IN SECONDS
  stroke(#D8D090);
  strokeWeight(4);
  beginShape(POINTS);
  for (int i = 0; i < 360; i+=6){
    float angle = radians(i);
    float x = distx + cos(angle) * secsRadius;
    float y = disty + sin(angle) * secsRadius;
    vertex(x, y);
  }
  
  // NUMBER INDICATORS (12, 3, 6, 9)
  fill(#8E8A6A);
  text("12", 510, 335);
  text("3", 750, 565);
  text("6", 510, 795);
  text("9", 270, 565);
}
