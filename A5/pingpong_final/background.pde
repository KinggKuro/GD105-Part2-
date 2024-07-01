class Background {
  float x;
  float y;
  float z;
  int size;
  color col;

  Background(float Bx, float By, float Bz) {
    x = Bx;
    y = By;
    z = Bz;

    size = 10;
    col = 255;
  }

  void update() {
    float spd = map(z, 1, 5, 5, 1);

    y = y + spd;
    if (y > height + 10) {
      x = random(width);
      y = -10;
    }
  }

  void show() {
    float t = map(z, 2, 5, 1, 2);
    fill(col);
    
    strokeWeight(t);
    line(x, y, x, y + t);
  }
}
