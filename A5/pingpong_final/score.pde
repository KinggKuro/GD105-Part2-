// A CUSTOM CLASS THAT KEEPS SCORE OF HOW LONG THE PLAYER HAS BEEN PLAYING FOR

class score {
  int x, y;

  boolean running = false;

  int score   = 0;
  int interval  = 1000;
  int lastTime  = 0;

  score(int xpos, int ypos) {
    x = xpos;
    y = ypos;
  }

  void update() {
    if (gameStart == true && running == true && !gameOver) {
      int currentTime = millis();
      if (currentTime - lastTime >= interval) {
        score++;
        lastTime = currentTime;
      }
    }
  }

  void display() {
    if (gameOver == true) {
      fill(0, 0, 0, 0);
    } else if (gameStart == false) {
      fill(0, 0, 0, 0);
    } else {
      fill(255);
      String time = "Current Score:  " + score;
      text(time, x, y);
    }
  }
}
