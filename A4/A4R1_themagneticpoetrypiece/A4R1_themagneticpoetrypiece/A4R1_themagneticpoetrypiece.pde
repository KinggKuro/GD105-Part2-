// IMAGE SOURCE --> https://www.reddit.com/r/typewriters/comments/1796n22/anyone_else_make_simple_typewriter_art_for/
String main = "HAPPY BIRTHDAY!";

color background;

void setup() {
  size(900, 800);
  background(255);
  rectMode(CENTER);

  background = #F7F1CF;
}

void draw() {
  fill(background, 25);
  rect(width/2, height/2, width, height);

  textAlign(CENTER);

  // MAIN MESSAGE
  fill(0);
  textSize(60);
  text(main, width/2, height/2, 350, 220);


  // THE CAKE'S LAYERS
  int a = 110;
  int b = 140;
  while (a < 800) {
    fill(0);
    textSize(48);
    text("@", a, width*0.50);

    a = a + 60;
  }
  while (b < 750) {
    fill(0);
    textSize(40);
    text("%", b, width*0.50);

    b = b + 60;
  }

  int a2 = 145;
  int b2 = 175;
  while (a2 < 740) {
    fill(0);
    textSize(45);
    text("@", a2, width*0.31);

    a2 = a2 + 65;
  }
  while (b2 < 730) {
    fill(0);
    textSize(35);
    text("%", b2, width*0.31);

    b2 = b2 + 65;
  }

  int a3 = 30;
  int b3 = 60;
  while (a3 < 900) {
    fill(0);
    textSize(45);
    text("@", a3, width*0.81);

    a3 = a3 + 65;
  }
  while (b3 < 870) {
    fill(0);
    textSize(45);
    text("%", b3, width*0.81);

    b3 = b3 + 65;
  }

  // CAKE'S OUTER COATING / THE SIDES OF THE CAKE
  int l1 = 150;
  int l2 = 100;
  while (l1 < 270) {
    fill(0);
    textSize(70);
    text("(", 145, 190 + l1);
    text(")", 735, 190 + l1);

    l1 = l1 + 67;
  }
  while (l2 < 350) {
    fill(0);
    textSize(66);
    text("(", 100, 400 + l2);
    text(")", 790, 400 + l2);

    l2 = l2 + 65;
  }

  // CANDLES + ICING ETC
  int c1, c2, c3;
  c1 = 50;
  c2 = 50;
  c3 = 50;
  while(c1 < 410){
    fill(0);
    textSize(35);
    text("I", 250 + c1, 210);
    text("I", 250 + c2, 240);
    text("`", 250 + c3, 200);
    
    c1 = c1 + 100;
    c2 = c2 + 100;
    c3 = c3 + 100;
  }
  
  int t1 = 125;
  int t2 = 585;
  int t3 = 140;
  while (t1 < 775) {
    fill(0);
    textSize(55);
    text("*", t1, 570);
    text("*", t1, 660);

    t1 = t1 + 20;
  }
  while (t2 < 650) {
    fill(0);
    textSize(55);
    text("*", 125, t2);
    text("*", 775, t2);

    t2 = t2 + 20;
  }
  while (t3 < 760){
    fill(0);
    textSize(55);
    text("+", t3, 590);
    
    t3 = t3 + 32;
  }
}
