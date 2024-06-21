class title {
  PVector title;
  int xpos;
  int ypos;

  int size;
  color col1;
  color col2;

  title(int x, int y) {
    xpos = x;
    ypos = y;

    title = new PVector(width/2, height * 1/10);

    size = 100;
    
    col1 = #FFFFFF;
    col2 = #8400DE;
  }

  void display() {
    PFont Galaga = loadFont("Cambria.vlw");
    textFont(Galaga, 120);
    
    fill(col1);
    text("PROJECT:", xpos - 200, ypos);
    
    fill(col2);
    text("GALAGA", xpos + 185, ypos);
  }
}
