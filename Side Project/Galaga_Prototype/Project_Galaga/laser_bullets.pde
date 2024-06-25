class laser {
  int x;
  int y;
  int z;

  int size;
  int velocity;

  boolean remove;

  laser(int initialX, int initialY) {
    x = initialX;
    y = initialY;

    size = 6;

    velocity = 12;

    remove = false;
  }

  void create() {
    fill(#6702F7);
    noStroke();
    ellipse(x - 3, y, size + cos(frameCount*0.15) * 1, size + 10);
    ellipse(x + 3, y, size + cos(frameCount*0.15) * 1, size + 10);
  }

  void fire() {
    y -= 3;
  }

  void checkRemove() {
    if (y < 0) {
      remove = true;
    }
  }
}
