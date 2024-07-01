class paddle {
  float x;
  float y;
  float w;
  float h;

  paddle(float paddleX, float paddleY, float paddleWidth, float paddleHeight) {
    x = paddleX;
    y = paddleY;
    w = paddleWidth;
    h = paddleHeight;
  }

  paddle() {
    x = width/2;
    y = height - 120;

    w = 110;
    h = 25;
  }

  void display() {
    fill(255);
    rect(x, y, w, h);
  }

  void move() {
    x = mouseX;
    if (x > width - 110) {
      x = width - w;
    }
    if (x < 0) {
      x = 0 + w;
    }
  }
}
