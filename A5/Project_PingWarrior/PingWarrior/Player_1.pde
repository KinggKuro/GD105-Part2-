class player {
  int x, y;
  int size;
  color col;

  player (int xInitial, int yInitial, int psize, color pcol) {
    x = xInitial;
    y = yInitial;
    size = psize;
    col  = pcol;
  }

  player() {
    x = width/2;
    y = height * 10/11;

    size = 70;
    col  = #420052;
  }

  void render() {
    fill(#D7A7FA);
    stroke(col);
    strokeWeight(2);
    rect(x, y, size, size - 55);
  }

  void move() {
    if (pingPong.gameStart == true) {
      x = mouseX;
      y = height * 10/11;
    } else {
      x = width/2;
      y = height * 10/11;
    }
  }
}
