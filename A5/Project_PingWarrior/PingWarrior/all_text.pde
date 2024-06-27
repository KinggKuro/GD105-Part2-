PFont pixel, pixel2;

class prompt1 {
  int x, y;
  color col;

  prompt1(int tx, int ty) {
    x = tx;
    y = ty;

    col = 255;
    pixel = loadFont("04b30-25.vlw");
    pixel2 = loadFont("UpheavalTT-BRK--70.vlw");
  }

  void render() {
    fill(col);
    textFont(pixel);
    text("CLICK ANYWHERE TO BEGIN", x, y - 25 + sin(frameCount * 0.03) * 10);
  }
}
