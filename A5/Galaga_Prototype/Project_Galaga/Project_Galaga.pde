// DID SOME RESEARCH ON CERTAIN ASPECTS: https://www.youtube.com/watch?v=_k_yRbUeVxY&t=633s (FIRING PROJECTILES)

int s = 300; // s = stars
player Ship;

// ARRAY FOR LASER BULLETS
ArrayList<laser>bulletList;

// ARRAY FOR SPACE BACKGROUND
outerSpace[] space;

void setup() {
  size(1280, 720);
  frameRate(125);

  space = new outerSpace[s];
  for (int i = 0; i < space.length; i++) {
    space[i] = new outerSpace(random(width), -10, random(5));
  }

  // CONSTRUCTOR FOR LASER BULLETS
  bulletList = new ArrayList<laser>();

  // CONSTRUCTOR FOR PLAYER CHARACTER
  Ship = new player(width/2, height*3/4, 15, 35);
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

  for (int i = bulletList.size()-1; i >= 0; i--) {
    laser Bullet = bulletList.get(i);

    if (Bullet.remove == true) {
      bulletList.remove(Bullet);
    }
  }

  // DRAWING/RENDERING THE SPACESHIP (PLAYABLE CHARACTER)
  Ship.render();
  Ship.move();
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
    bulletList.add(new laser(Ship.x, Ship.y));
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
