class P1 {
  int x;
  int y;
  int w;
  int h;

  boolean Up;
  boolean Down;

  P1 (int originX, int originY) {
    x = originX;
    y = originY;

    w = 20;
    h = 120;
  }

  void render() {
    fill(255);
    noStroke();
    rect(x, y, w, h);
  }

  void move() {
    if (gameStart) {
      y = mouseY - h / 2;
      if (y > height - 60) {
        y = (height - 60) + h / 120;
      }
      if (y < 90) {
        y = (0 + 60) + h / 120;
      }
    }
  }
}
