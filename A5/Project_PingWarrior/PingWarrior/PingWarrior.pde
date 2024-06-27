int s = 200;
boolean gameStart;

pong ball;      // PING PONG BALL
prompt1 prompt; // CLICK TO START

P1 paddle;  // PLAYER 1 CLASS

void setup() {
  size(1280, 720);
  rectMode(CENTER);
  textAlign(CENTER);
  frameRate(75);
  smooth();

  // BOOLEANS
  gameStart = false;

  // CONSTRUCTOR CLASSES
  ball     = new pong(width/2, height/2);
  paddle   = new P1(width * 1/13, height / 2);
  prompt   = new prompt1(width/2, height/2);
}

void draw() {
  background(0);
  prompt.render();

  // PING PONG BALL
  ball.render();
  ball.move();
  
  // PADDLE(S)
  paddle.render();
  paddle.move();
}
