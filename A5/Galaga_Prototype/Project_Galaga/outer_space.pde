class outerSpace {
  float x;
  float y;
  float z;

  outerSpace(float sX, float sY, float sZ) {
    x = sX;
    y = sY;
    z = sZ;
  }

  void update() {
    float spd = map(z, 1, 5, 2, 8);
    y = y + spd;
    if (y > height + 10) {
      y = -10;
      x = random(width);
    }
  }

  void show() {
    fill(255);
    noStroke();
    
    float t = map(z, 0, 5, 1, 2);
    ellipse(x, y, t, 10);
  }
}
