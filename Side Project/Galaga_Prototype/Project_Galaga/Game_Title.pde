class title {
  PVector title;
  PFont GalagaType;

  int xpos;
  int ypos;

  int size;
  color col1;
  color col2;

  title(int x, int y) {
    GalagaType = loadFont("Candara-Bold-50.vlw");
    xpos = x;
    ypos = y;

    title = new PVector(width/2, height * 1/10);

    size = 100;

    col1 = #FFFFFF;
    col2 = #8400DE;
  }

  void display() {
    textFont(GalagaType, 120);
    fill(col1);
    text("PROJECT:", xpos - 225, ypos + sin(frameCount * 0.06) * 5);
    fill(col2);
    text("GALAGA", xpos + 235, ypos + sin(frameCount * 0.06) * 5);
  }
}
