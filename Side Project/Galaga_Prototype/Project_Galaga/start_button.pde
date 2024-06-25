class playButton {
  PFont buttonStyle;
  int x;
  int y;
  int w;
  int h;

  boolean Clicked;
  boolean Pressed;
  boolean gameStart;

  color col;

  playButton(int xpos, int ypos, int Width, int Height) {
    x = xpos;
    y = ypos;
    w = Width;
    h = Height;

    buttonStyle = loadFont("SitkaSmall-Bold-50.vlw");

    Clicked = false;
    Pressed = false;
    gameStart = false;

    col = #5500F5;
  }

  void toggle() {
    if (mousePressed == true && mouseButton == LEFT && Clicked == false) {
      Clicked = true;
      if (mouseX >= x - 60 && mouseX <= x + w && mouseY >= y - 40 && mouseY <= y + h) {
        Pressed = true;
        if (Clicked == true && Pressed == true) {
          gameStart = true;
        }
      }
    }
  }

  void show() {
    fill(col);
    stroke(255);
    strokeWeight(4);
    rect(x, y - sin(frameCount * 0.02) * 5, w, h);

    fill(255);
    textFont(buttonStyle, 50);
    text("PLAY", x, y + 15 - sin(frameCount * 0.02) * 5);

    if (mouseX >= x - 75 && mouseX <= x + w && mouseY >= y - 60 && mouseY <= y + h) {
      fill(255);
      stroke(col);
      strokeWeight(4);
      rect(x, y - sin(frameCount * 0.02) * 5, w, h);

      fill(col);
      textFont(buttonStyle, 50);
      text("PLAY", x, y + 15 - sin(frameCount * 0.02) * 5);
    } else {
      fill(col);
      stroke(255);
      strokeWeight(4);
      rect(x, y - sin(frameCount * 0.02) * 5, w, h);

      fill(255);
      textFont(buttonStyle, 50);
      text("PLAY", x, y + 15 - sin(frameCount * 0.02) * 5);
    }
  }

  boolean isClicked() {
    return Clicked;
  }
}
