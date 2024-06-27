class pong {
  int x;
  int y;

  int xspeed = 3;
  int yspeed = 2;

  int xdirection = 2;
  int ydirection = 2;

  int size;
  color col;

  pong(int xpos, int ypos) {
    x = xpos;
    y = ypos;

    size = 20;
    col  = 255;
  }

  void render() {
    fill(col);
    noStroke();
    circle(x, y, size);
  }

  void move() {
    if (gameStart == true) {
      x = x + (xspeed * xdirection);
      y = y + (yspeed * ydirection);

      // COLLISION WITH WALLS
      if (x > width - 10 || x < 10) {
        xdirection *= -1;
      }
      if (y > height - 10 || y < 10) {
        ydirection *= -1;
      }

      // COLLISION WITH PADDLE(S)
      if (x < paddle.x && x > paddle.x + paddle.w && y + size > paddle.y && y - size < paddle.y + paddle.h){
        xdirection *= -1;
      }
    }
  }
}
