class spaceShip {
  PVector spaceship;
  float x;
  float y;
  float driftSpeed = 6;
  int   shipsize;
  color shipcol;

  spaceShip(float s_X, float s_Y, int s_size, color s_col) {
    x = s_X;
    y = s_Y;
    shipsize = s_size;
    shipcol  = s_col;
  }

  spaceShip() {
    spaceship = new PVector(640, 540);
    shipsize = 30;
    shipcol  = 255;

    x = width / 2;
    y = width * 0.70;
  }

  void render() {
    // DRAWING THE ROCKET FLAMES
    fill(#F2A305);
    noStroke();
    ellipse(spaceship.x, spaceship.y + 10, 15 + cos(frameCount * 0.15) * 5, 30);
    fill(#FFCC64);
    ellipse(spaceship.x, spaceship.y + 10, 10 + cos(frameCount * 0.15) * 5, 20);

    // DRAWING THE ACTUAL SPACESHIP
    fill(shipcol);
    noStroke();
    triangle(spaceship.x - 15, spaceship.y, spaceship.x + 15, spaceship.y, spaceship.x, spaceship.y - 30);
    triangle(spaceship.x - 15, spaceship.y, spaceship.x + 15, spaceship.y, spaceship.x, spaceship.y + 10);
  }

  // MANAGING MOVEMENT
  void update() {
    if (keyPressed && key == 'a') {
      spaceship.x -= driftSpeed;
    }

    if (keyPressed && key == 'd') {
      spaceship.x += driftSpeed;
    }

    if (spaceship.x > width || spaceship.x < 0) {
      spaceship.x *= -1;
    }
  }
}

class lasers {
  PVector laserBullets;
  float x, y;
  int   size;
  color col;

  lasers(float bX, float bY, int bsize, color bcol) {
    x = bX;
    y = bY;
    size = bsize;
    col  = bcol;
  }

  lasers() {
    laserBullets = new PVector(640, 540);
    
    size = 20;
    col  = #FF0808;
    
    
    x = laserBullets.x;
    y = laserBullets.y; 
  }

  void update() {
  }
}
