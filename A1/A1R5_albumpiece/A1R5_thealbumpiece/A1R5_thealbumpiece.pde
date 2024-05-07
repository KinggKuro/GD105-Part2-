//SOURCE: Sonia Delaunay, Lot 41026, https://www.artsy.net/artwork/sonia-delaunay-disques
void setup(){
  size(600, 800);
  background(255);
  rectMode(CENTER);
}

void draw(){
  fill(#CEC9B7);
  rect(width/2, height/2, width, height);
  
  int circleSize1, circleSize2, circleSize3, arcSize1, arcSize2;
  
  circleSize1 = 75;
  circleSize2 = 155;
  circleSize3 = 300;
  
  arcSize1 = 75;
  arcSize2 = 445;
  
// GIANT ARC
  noFill();
  stroke(#DE6133);
  strokeWeight(3);
  arc(330, 350, arcSize2, arcSize2, 0.30, PI+QUARTER_PI, OPEN);
  
  
// DRAWING THE CIRCLES
  noStroke();
  fill(#A09969);
  circle(380, 295, circleSize3);

  noFill();
  stroke(50);
  strokeWeight(3);
  circle(330, 350, circleSize3);
  
  // INNER BLACK CIRCLES NON-FILLED
  noFill();
  stroke(50);
  strokeWeight(3);
  circle(330, 350, 220);
  strokeWeight(5);
  circle(330, 350, 200);
  
  
  // RED-ORANGE CIRCLE NON-FILLED
  noFill();
  stroke(#DE6133);
  strokeWeight(3);
  circle(235, 465, circleSize3);
  
  noStroke();
  // YELLOW CIRCLE
  fill(#DEC233);
  circle(330, 350, circleSize2);
  
  // BLACK CIRCLE
  fill(50);
  circle(235, 465, circleSize2);
  
  // TWO INNER ARCS
  
  fill(#DE6133);
  arc(300, 372, arcSize1, arcSize1, 2.30, TWO_PI-QUARTER_PI, PIE);
  fill(50);
  arc(360, 325, arcSize1, arcSize1, 0-QUARTER_PI, PI-QUARTER_PI, PIE);
  
  // GREEN CIRCLE
  fill(#3D9853);
  circle(330, 350, circleSize1);
  
  // RED-ORANGE CIRCLE
  fill(#DE6133);
  circle(430, 240, circleSize2);
  
  // MINI-WHITE CIRCLES INSIDE THE FILLED BLACK & RED CIRCLES
  fill(#CEC9B7);
  circle(404, 267, circleSize1);
  circle(459, 215, circleSize1);
  
  circle(257, 435, circleSize1);
  circle(210, 493, circleSize1);
  
  // INNER ARCS
  fill(#DE6133);
  arc(257, 435, arcSize1, arcSize1, -0.80, PI-QUARTER_PI, PIE);
  arc(210, 493, arcSize1, arcSize1, 2.30, TWO_PI-QUARTER_PI, PIE);
  
  fill(50);
  arc(404, 267, arcSize1, arcSize1, 2.30, TWO_PI-QUARTER_PI, PIE);
  arc(459, 215, arcSize1, arcSize1, -0.80, PI-QUARTER_PI, PIE);
}
