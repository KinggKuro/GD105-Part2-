// INSPIRATION: Transformation B, Josef Albers 1950 - https://www.metmuseum.org/art/collection/search/373257

void setup(){
  size(1000, 800);
  background(255);
  rectMode(CENTER);
}

void draw(){
  // BACKGROUND
  fill(#F0E6C6);
  rect(width/2, height/2, width, height);
  
  fill(#67614F);
  noStroke();
  rect(width/2, height/2, 985, 785);
  
  //DRAWING THE LINES
  stroke(#F0E6C6);
  strokeWeight(1);
  
  //SMALL LINES
  
  line(7, 7, 350, 793);
  line(690, 7, 990, 793);
  
  line(350, 790, 890, 540);
  line(690, 7, 105, 232);
  
  line(300, 7, 880, 215);
  line(880, 215, 710, 790);
  line(710, 790, 110, 590);
  line(110, 590, 300, 7);
  
  
  line(7, 7, 500, 200);
  line(500, 80, 500, 720);
  
  line(500, 200, 805, 315);
  
  line(245, 180, 245, 550);
  line(245, 550, 600, 675);
  
  line(435, 615, 545, 220);
  
  line(760, 620, 752, 170);
  
  line(245, 550, 345, 140);
  line(599, 676, 754, 296);
  //THOSE TWO REALLY SKINNY LINES
  
  strokeWeight(2);
  line(400, 255, 287, 649);
  line(753, 168, 618, 575);
  
  //BIG LINES
  
  strokeWeight(7);
  line(500, 80, 750, 168);
  line(750, 168, 400, 255);
  line(400, 255, 245, 180);
  
  line(245, 550, 435, 615);
  line(287, 647, 618, 573);
  line(287, 647, 500, 720);
  line(618, 573, 759, 620);
}
