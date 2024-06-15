class outerSpace {
  float x;
  float y;
  float z;

  int size = (int)random(2, 5);

  outerSpace(float sX, float sY, float sZ) {
    x = sX;
    y = sY;
    z = sZ;
  }

  void update() {
    float spd = map(z, 0, 2, 5, 2);
    y = y + spd;
    if (y > height + 10) {
      y = -10;
      x = random(width);
    }
  }

  void show() {
    color col = color(random(150, 255));
    
    fill(col);
    noStroke();
    circle(x, y, size);
  }
}
