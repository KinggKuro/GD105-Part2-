class prompt {
  PFont digital = loadFont("UpheavalTT-BRK--50.vlw");
  PFont title   = loadFont("04b30-70.vlw");
  float x;
  float y;
  PVector prompt = new PVector(width/2, (height/2 - 40) + sin(frameCount * 0.05) * 5);

  boolean hideText;

  prompt(float xpos, float ypos) {
    x = xpos;
    y = ypos;
  }

  void display() {
    if (gameStart == true) {
      hideText();
    } else {
      fill(255);
      textFont(digital);
      text("M1 TO BEGIN", prompt.x, prompt.y + sin(frameCount * -0.05) * 15);
      textFont(title);
      text("GLITCHPONG", prompt.x, prompt.y - 200 + sin(frameCount * 0.01) * 10);
    }
  }

  void hideText() {
    fill(0, 0, 0, 0);
  }
}
