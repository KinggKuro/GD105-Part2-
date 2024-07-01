class gameOver {
  int x;
  int y;

  gameOver(int xpos, int ypos) {
    x = xpos;
    y = ypos;
  }

  void over() {
    if (Ball.y > height + 10) {
      gameOver = true;
    }
    if (gameOver) {
      fill(255, 0, 0, 150);
      textFont(prompt.digital);
      text("Game Over.", x, y);
      text("Final Score: " + Score.score, x, y + 300);
    }
  }
}
