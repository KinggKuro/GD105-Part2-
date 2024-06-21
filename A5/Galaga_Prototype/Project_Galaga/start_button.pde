class playButton {
  PFont Style;

  int x;
  int y;
  int w;
  int h;

  boolean Clicked;
  boolean Pressed;
  boolean gameToggled;

  color col;

  playButton(int xpos, int ypos, int Width, int Height) {
    x = xpos;
    y = ypos;
    w = Width;
    h = Height;

    Style = loadFont("Calibri-Bold.vlw");

    Clicked = false;
    Pressed = false;
    gameToggled = false;

    col = #5500F5;
  }

  void toggle() {
    if (mousePressed == true && mouseButton == LEFT && Clicked == false) {
      Clicked = true;
      if (mouseX >= x - 75 && mouseX <= x + w && mouseY >= y - 60 && mouseY <= y + h) {
        Pressed = true;
        if (Clicked == true && Pressed == true) {
          gameToggled = true;
        }
      } else {
        Clicked = false;
        Pressed = false;
        gameToggled = false;
      }
    }
  }

  void show() {
    fill(col);
    stroke(255);
    strokeWeight(4);
    rect(x, y, w, h);
    
    textFont(Style, 50);
    text("PLAY", x, y + 15);
  }
}
