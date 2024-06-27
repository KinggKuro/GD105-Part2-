void mouseClicked() {
  if (mouseButton == LEFT) {
    gameStart = true;
  }
}

void keyPressed() {
  if (key == 'w') {
    paddle.Up = true;
  }

  if (key == 's') {
    paddle.Down = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    paddle.Up = false;
  }

  if (key == 's') {
    paddle.Down = false;
  }
}
