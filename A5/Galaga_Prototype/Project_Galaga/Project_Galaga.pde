// DID SOME RESEARCH ON CERTAIN ASPECTS: https://www.youtube.com/watch?v=_k_yRbUeVxY&t=633s (FIRING PROJECTILES)

int s = 125;// s = stars

// CLASSES
player Ship;
playButton start;
title game;

// ARRAY LISTS
ArrayList<laser>bulletList;

// ARRAYS
outerSpace[] space;

void setup() {
  size(1280, 720);
  rectMode(CENTER);
  textAlign(CENTER);
  frameRate(125);

  space = new outerSpace[s];
  for (int i = 0; i < space.length; i++) {
    space[i] = new outerSpace(random(width), -10, random(5));
  }

  // CONSTRUCTOR FOR LASER BULLETS
  bulletList = new ArrayList<laser>();

  Ship = new player(width/2, height*3/4, 15, 35); // SPACESHIP
  start = new playButton(width/2, height * 6/7, 150, 60); // START BUTTON
  game = new title(width/2, height * 2/10); // GAME TITLE
}

void draw() {
  background(0);

  // OUTER SPACE
  for (int i = 0; i < space.length; i++) {
    space[i].show();
    space[i].update();
  }

  // LASER BULLETS
  for (laser Bullet : bulletList) {
    Bullet.create();
    Bullet.fire();
    Bullet.checkRemove();
  }

  // MANAGING INPUT LAG / MAKING SURE THE GAME DOESN'T LAG FROM TOO MANY PROJECTILES BEING FIRED
  for (int i = bulletList.size()-1; i >= 0; i--) {
    laser Bullet = bulletList.get(i);

    if (Bullet.remove == true) {
      bulletList.remove(Bullet);
    }
  }

  Ship.render();  // PLAYER SPACESHIP
  Ship.move();

  start.show();  // PLAY BUTTON
  start.toggle();

  if (playButton.isClicked()) {
  }


  game.display(); // GAME TITLE
}

// PLAYER CONTROLS
void keyPressed() {
  if (key == 'w') {
    Ship.movingUp = true;
  }

  if (key == 'a') {
    Ship.movingLeft = true;
  }

  if (key == 's') {
    Ship.movingDown = true;
  }

  if (key == 'd') {
    Ship.movingRight = true;
  }

  if (key == 'e') {
    bulletList.add(new laser(Ship.x, Ship.y)); // WHEN 'E' IS PRESSED, PLAYER WILL SHOOT
  }
}

void keyReleased() {
  if (key == 'w') {
    Ship.movingUp = false;
  }

  if (key == 'a') {
    Ship.movingLeft = false;
  }

  if (key == 's') {
    Ship.movingDown = false;
  }

  if (key == 'd') {
    Ship.movingRight = false;
  }
}
