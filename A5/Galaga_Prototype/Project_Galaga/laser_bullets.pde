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
    circle(x - 3, y, size);
    circle(x + 3, y, size);
  }

  void fire() {
    y -= 7;
  }

  void checkRemove() {
    if (y < 0) {
      remove = true;
    }
  }
}
