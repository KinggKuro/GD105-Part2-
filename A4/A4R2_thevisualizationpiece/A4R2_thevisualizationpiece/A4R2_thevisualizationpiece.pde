int numStars = 110;

int[] sizes;
PVector[] circles;

void setup() {
  size(800, 800);
  frameRate(60);
}

void draw() {
  background(0);

  sizes = new int[numStars];
  circles = new PVector[numStars];

  for (int i = 0; i < numStars; i++) {
    sizes[i] = (int)random(2, 3);
    circles[i] = new PVector( random(width), random(height) );
  }

  // DRAWING THE SUN + THE EARTH ORBITING THE SUN
  fill(#005A0A);
  circle(400 + cos(frameCount*0.03)*300, 459 + sin(frameCount*0.03)*140, 52);
  resetMatrix();

  fill(#2E94A7);
  circle(400 + cos(frameCount*0.03)*300, 459 + sin(frameCount*0.03)*140, 35);
  resetMatrix();

  fill(#FFED21, 200);
  noStroke();
  circle(width/2, height/2, 120 + cos(frameCount*0.03)*5);
  circle(width/2, height/2, 120 + cos(frameCount*0.03)*15);
  circle(width/2, height/2, 120 + cos(frameCount*0.03)*25);

  fill(#FFF586, 225);
  circle(width/2, height/2, 110 + cos(frameCount*0.03)*15);
  circle(width/2, height/2, 95 + cos(frameCount*0.03)*15);
  resetMatrix();


  // ROTATING STARS BEING DRAWN
  for (int i = 0; i < numStars; i++) {
    fill(255);
    circle(circles[i].x + cos(frameCount*-0.03)*5, circles[i].y, sizes[i]);
  }
}
