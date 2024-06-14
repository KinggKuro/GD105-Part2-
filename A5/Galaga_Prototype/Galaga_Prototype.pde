int n = 200;
int p = 64;
int f = 2;
space[] outerSpace;
lasers[] bullets;

playButton play;
spaceShip character;

void setup() {
  size(1280, 720);
  stroke(0, 50, 150);
  rectMode(CENTER);
  frameRate(165);
  smooth();

  play = new playButton();
  character = new spaceShip();

  bullets = new lasers[f];
  for (int i = 0; i < bullets.length; i++) {
    bullets[i] = new lasers();
  }

  outerSpace = new space[n];
  for (int i = 0; i < outerSpace.length; i++) {
    outerSpace[i] = new space();
  }
}

void draw() {
  background(0);

  // RENDERING + DISPLAYING THE PLAY BUTTON
  play.update();
  play.render();

  // RENDERING + DISPLAYING THE SPACESHIP
  character.render();

  // OUTER SPACE BACKGROUND
  for (int i = 0; i < outerSpace.length; i++) {
    outerSpace[i].update();
  }
}

void keyPressed() {
  character.update();

  for (int i = 0; i < bullets.length; i++) {
    bullets[i].update();
  }
}
