PImage baki, jack, pickle, aura, yujiro1, yujiro2, title;

void setup(){
  size(1000, 1000);
  background(255);
  rectMode(CENTER);
  
  baki = loadImage("Baki-PNG-Photo.png");
  jack = loadImage("Jack_Hanma.png");
  yujiro1 = loadImage("Yujiro-PNG-Picture.png");
  yujiro2 = loadImage("Yujiro-PNG-Image-HD.png");
  pickle = loadImage("pickle_baki.png");
  aura = loadImage("Aura-PNG-Cutout.png");
  title = loadImage("baki_480x480.png");
}

void draw(){
  fill(255);
  rect(width/2, height/2, width, height);
  
  
  image(aura, -420, -50);
  
  image(baki, 700, 150);
  image(yujiro1, 45, 220);
  image(yujiro2, 140, 18);
  image(jack, -180, 400);
  
  image(title, 133, 400);
  title.resize(800, 580);
}
