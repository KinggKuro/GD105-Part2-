class player {
  int x;
  int y;
  int w;
  int h;

  int horizontal;
  int vertical;

  // HORIZONTAL MOVEMENT
  boolean movingLeft;
  boolean movingRight;

  // VERTICAL MOVEMENT
  boolean movingUp;
  boolean movingDown;

  player(int originX, int originY, int originW, int originH) {
    x = originX;
    y = originY;
    w = originW;
    h = originH;

    movingLeft = false;
    movingRight = false;

    movingUp = false;
    movingDown = false;

    horizontal = 4;
    vertical = 4;
  }

  void render() {
    // SPACESHIP'S DESIGN
    fill(#F7AA02, 150);
    ellipse(x, y + 20, w + 15 + cos(frameCount*0.21)*1, h - 3);
    fill(#FFDB8B, 175);
    ellipse(x, y + 20, w - 30 + cos(frameCount*0.21)*1, h - 15);

    fill(255);
    noStroke();
    ellipse(x, y, w, h);
    triangle(x - 25, y + 25, x, y + 10, x, y - 25);
    triangle(x + 25, y + 25, x, y + 10, x, y - 25);
  }

  void move() {
    if (movingLeft == true) {
      x -= horizontal;
    }

    if (movingRight == true) {
      x += horizontal;
    }

    if (movingUp == true) {
      y -= vertical;
    }

    if (movingDown == true) {
      y += vertical;
    }
  }
}
