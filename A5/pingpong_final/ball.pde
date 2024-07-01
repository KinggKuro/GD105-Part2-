class ball {
  float x;
  float y;
  int size = 20;
  int bounces = 0;

  float xspeed = 2.8;
  float yspeed = 2.2;

  float xdirection = 1;
  float ydirection = 1;

  ball(float xpos, float ypos) {
    x = xpos;
    y = ypos;
  }

  void display() {
    fill(0);
    stroke(255);
    strokeWeight(3);
    ellipse(x, y + sin(frameCount * 0.05) * 5, size, size);
  }

  void move() {
    x = x + (xspeed * xdirection);
    y = y + (yspeed * ydirection);
    if (x > width - 10 || x < 10) {
      xdirection *= -1;
    }

    if (y < 10) {
      ydirection *= -1;
    }

    if (x + size / 2 >= paddle.x && x + size/2 <= paddle.x + paddle.w) {
      if (y + size / 2 >= paddle.y && y + size / 2 <= paddle.y + paddle.h) {
        ydirection *= -1;
        if (xspeed < 15 && yspeed < 12) {
          xspeed += 0.15;
          yspeed += 0.25;
        }
      }
    }
  }
}
