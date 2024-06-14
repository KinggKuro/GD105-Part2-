class playButton {
  float xpos;
  float ypos;
  float Width_x;
  float Width_y;
  int size;
  color col;
  boolean Clicked = false;
  boolean Pressed = false;

  playButton (float buttonX, float buttonY, float buttonW_x, float buttonW_y, int buttonSize, color buttonCol) {
    xpos = buttonX;
    ypos = buttonY;
    Width_x = buttonW_x;
    Width_y = buttonW_y;
    size = buttonSize;
    col = buttonCol;
  }

  playButton() {
    size = 120;
    col  = #214693;


    xpos = width / 2;
    ypos = height * 0.85;

    Width_x =  size + 35;
    Width_y =  size - 50;
  }

  void update() {
    if (mousePressed == true && mouseButton == LEFT && Pressed == false) {
      Pressed = true;
      if (mouseX >= xpos && mouseX <= xpos+Width_x && mouseY >= ypos && mouseY <= ypos+Width_y) {
        Clicked = true;
      } else {
        Clicked = false;
        Pressed = false;
      }
    }

    if (mouseX >= xpos && mouseX <= xpos+Width_x && mouseY >= ypos && mouseY <= ypos+Width_y) {
      fill(#74A1FF);
    } else {
      fill(col);
    }
  }

  void render() {
    fill(col);
    stroke(255);
    strokeWeight(4);

    rect(xpos, ypos + sin(frameCount*0.03)*10, Width_x, Width_y);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(70);
    text("PLAY", xpos, ypos + sin(frameCount*0.03)*10);
  }
  
  boolean isClicked() {
    return Clicked;
  }
}
