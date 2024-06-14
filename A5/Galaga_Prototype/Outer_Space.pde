class space {
  float x, y, z;
  int size;
  color col;

  space(float s_x, float s_y, float s_z, int s_size, color s_col) {

    x = s_x;
    y = s_y;
    z = s_z;
    size = s_size;
    col  = s_col;
  }

  space() {
    y = -10 + random(720);
    x = random(width);

    size = (int)random(1, 3);
    col  = color(random(150, 255));
  }

  void update() {
    fill(col);
    noStroke();
    circle(x, y, size);
    
    float speed = map(z, 0, 0.5, 1, 1);
    y = y + speed;
    if (y > height + 10) {
      y = -10;
      x = random(width);
    }
  }
}
