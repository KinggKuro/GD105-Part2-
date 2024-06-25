// DIFFERENT WAVES + ENDLESS WAVES + ENEMY SPAWNS(wave1, wave2, wave3 etc.)

class enemy {
  float x, y;
  int size;
  color mobCol1;
  color mobCol2;

  enemy(float xpos, float ypos, int msize, color mc1, color mc2) {
    x = xpos;
    y = ypos;
    size = msize;
    mobCol1 = mc1;
    mobCol2 = mc2;
  }

  enemy () {
    x = (int)random(200, 1080);
    y = -50;

    size = 25;
    mobCol1 = color(random(#F5A400, #E2E30E),
                    random(#B99854, #E2E30E),
                    random(#E36A0E, #DE9C69));

    mobCol2 = #00FA66;
  }

  void render() {
    if (start.isClicked() && start.gameStart == true) {
      fill(mobCol1);
      noStroke();
      triangle(x - 7.5, y, x + 7.5, y, x, y + 25);

      y += 2;
      if (y > height + 50) {
        x = (int)random(200, 1080);
        y = -50;
      }
    }
  }

  void kill() {
    
  }
}
