class ball {
  int x, y;
  int xspeed, yspeed;
  int xdirection = 1;
  int ydirection = 1;
  int size;
  color col;

  boolean gameStart;

  ball(int xpos, int ypos) {
    x = xpos;
    y = ypos;
    
    xspeed = 3 + 3/5;
    yspeed = 3 + 3/5;
    size = 25;
    col  = 255;
    
    gameStart = false;
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
      if (x > width - 15 || x < 15) {
        xdirection *= -1;
      } 
      if (y > height - 15 || y < 15) {
        ydirection *= -1;
      } 
    }
  }
}
