int s = 125;

// NORMAL CLASSES
ball pingPong;
player P1;
CPU    P2;

// ARRAY CLASSES
backdrop[] space;

void setup() {
  size(1280, 720);
  rectMode(CENTER);
  frameRate(120);
  smooth();

  P1 = new player();
  P2 = new CPU();
  pingPong = new ball(width/2, height/2);

  space = new backdrop[s];
  for (int i = 0; i < space.length; i++) {
    space[i] = new backdrop(random(width), -10, random(5));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < space.length; i++) {
    space[i].update();
    space[i].render();
  }

  P1.render();       // PLAYER 1

  P2.render();       // PLAYER 2 (COMPUTER)


  pingPong.render(); // PING PONG BALL
}

void keyPressed() {
  if (key == ' ') {
    pingPong.gameStart = true;
    pingPong.move();
  }
}
