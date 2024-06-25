class CPU {
  int x, y;
  int size;
  color col;

  CPU (int originX, int originY, int csize, color ccol) {
    x = originX;
    y = originY;
    size = csize;
    col  = ccol;
  }

  CPU () {
    x = width/2;
    y = height * 1/11;

    size = 70;
    col  = #420052;
  }

  void render() {
    fill(#D7A7FA);
    stroke(col);
    strokeWeight(2);
    rect(x, y, size, size - 55);
  }
}
