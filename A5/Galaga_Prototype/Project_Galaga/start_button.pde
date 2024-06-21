class playButton {
  PFont buttonStyle;
  int xpos;
  int ypos;
  int Width;
  int Height;

  color col;

  boolean Pressed;
  boolean Clicked;
  boolean gameToggled;

  playButton(int x, int y, int w, int h) {
    xpos = x;
    ypos = y;
    Width = w;
    Height = h;

    buttonStyle = createFont("Arial", 40);

    col  = #001DAA;

    Pressed = false;
    Clicked = false;
    gameToggled = false;
  }

  void toggle() {
    if (mousePressed == true && mouseButton == LEFT && Pressed == false) {
      Pressed = true;
      if (mouseX >= xpos -75 && mouseX <= xpos+Width && mouseY > ypos - 75 && mouseY <= ypos+Height) {
        Clicked = true;
        if (Pressed == true && Clicked == true) {
          gameToggled = true;
        } else {
          Clicked = false;
          Pressed = false;
          gameToggled = false;
        }
      }
    }
  }

  void show() {
    stroke(255);
    strokeWeight(4);
    rect(xpos, ypos, Width, Height);

    fill(255);
    textFont(buttonStyle);
    text("PLAY", start.xpos, start.ypos + 15);

    if (mouseX >= xpos - 75 && mouseX <= xpos+Width && mouseY > ypos - 60 && mouseY <= ypos+Height) {
      fill(#8400DE);
      stroke(255);
      strokeWeight(4);
      rect(xpos, ypos, Width, Height);

      fill(#00DEF5);
      textFont(buttonStyle);
      text("PLAY", start.xpos, start.ypos + 15);
    } else {
      fill(col);
      stroke(255);
      strokeWeight(4);
      rect(xpos, ypos, Width, Height);

      fill(255);
      textFont(buttonStyle);
      text("PLAY", start.xpos, start.ypos + 15);
    }
  }

  boolean isClicked() {
    return Clicked;
  }
}
