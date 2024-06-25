class backdrop {
  float x, y, z;
  int   size;
  color col;


  backdrop (float gx, float gy, float gz) {
    x = gx;
    y = gy;
    z = gz;

    size = 15;
    col  = color(#C97EFF, 60);
  }

  void update() {
    float spd = map(z, 0, 5, 1, 4);
    y = y + spd;
    if (y > height) {
      y = -10;
      x = random(width);
    }
  }

  void render() {
    fill(col);
    noStroke();

    float t = map(z, 0, 5, 1, 2);
    circle(x, y, size * t);
  }
}

class extra {
  int x2, y2, z2;
  int size2;
  color col2;

  extra(int eX, int eY, int eZ) {
    x2 = eX;
    y2 = eY;
    z2 = eZ;
  }
}
