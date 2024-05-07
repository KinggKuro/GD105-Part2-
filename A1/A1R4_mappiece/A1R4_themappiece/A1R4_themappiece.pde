PVector pointA, pointB;

PVector stop1, stop2, stop3, stop4, stop5, stop6, stop7;
PVector bus1, bus2, bus3, bus4, bus5, bus6, bus7, bus8;

PFont burbank;

void setup(){
  size(800, 900);
  background(255);
  rectMode(CENTER);
  burbank = createFont("BurbankBigRegular-Black", 25);
  textFont(burbank);
  textAlign(CENTER);
  
  pointA = new PVector(45, 850);
  pointB = new PVector(700, 250);
  
  stop1 = new PVector(25, 730);
  stop2 = new PVector(25, 680);
  stop3 = new PVector(45, 630);
  stop4 = new PVector(55, 580);
  stop5 = new PVector(65, 530);
  stop6 = new PVector(75, 480);
  stop7 = new PVector(89, 400);
  
  bus1 = new PVector(110, 370);
  bus2 = new PVector(160, 345);
  bus3 = new PVector(220, 350);
  bus4 = new PVector(300, 390);
  bus5 = new PVector(400, 370);
  bus6 = new PVector(500, 345);
  bus7 = new PVector(580, 341);
  bus8 = new PVector(709, 360);
  
}

void draw(){
  fill(75, 125);
  rect(width/2, height/2, width, height);
  
  int pointSize = 20;
  
  int stopSize = 15;
 
  fill(0);
  stroke(#00A006);
  strokeWeight(6);
  
  line(pointA.x, pointA.y, stop1.x, stop1.y);
  line(stop1.x, stop1.y, stop2.x, stop2.y);
  line(stop2.x, stop2.y, stop3.x, stop3.y);
  line(stop3.x, stop3.y, stop4.x, stop4.y);
  line(stop4.x, stop4.y, stop5.x, stop5.y);
  line(stop5.x, stop5.y, stop6.x, stop6.y);
  line(stop6.x, stop6.y, stop7.x, stop7.y);
  
  circle(stop1.x, stop1.y, stopSize);
  circle(stop2.x, stop2.y, stopSize);
  circle(stop3.x, stop3.y, stopSize);
  circle(stop4.x, stop4.y, stopSize);
  circle(stop5.x, stop5.y, stopSize);
  circle(stop6.x, stop6.y, stopSize);
  circle(stop7.x, stop7.y, stopSize);
  
  fill(0);
  stroke(#64B3FF);
  strokeWeight(7);
  
  line(stop7.x, stop7.y, bus1.x, bus1.y);
  line(bus1.x, bus1.y, bus2.x, bus2.y);
  line(bus2.x, bus2.y, bus3.x, bus3.y);
  line(bus3.x, bus3.y, bus4.x, bus4.y);
  line(bus4.x, bus4.y, bus5.x, bus5.y);
  line(bus5.x, bus5.y, bus6.x, bus6.y);
  line(bus6.x, bus6.y, bus7.x, bus7.y);
  line(bus7.x, bus7.y, bus8.x, bus8.y);
  line(bus8.x, bus8.y, pointB.x, pointB.y);
  
  circle(bus1.x, bus1.y, stopSize);
  circle(bus2.x, bus2.y, stopSize);
  circle(bus3.x, bus3.y, stopSize);
  circle(bus4.x, bus4.y, stopSize);
  circle(bus5.x, bus5.y, stopSize);
  circle(bus6.x, bus6.y, stopSize);
  circle(bus7.x, bus7.y, stopSize);
  circle(bus8.x, bus8.y, stopSize);
  
  fill(255);
  stroke(0, 100);
  strokeWeight(3);
  
  circle(pointA.x, pointA.y, pointSize);
  circle(pointB.x, pointB.y, pointSize);
  resetMatrix();
  
  text("HOW TO GET", 200, 50);
  text("TO BAY PLAZA MALL", 385, 50);
  text("FROM HOSTOS", 580, 50);
  resetMatrix();
  
  
  stroke(#64B3FF);
  strokeWeight(5);
  line(70, 200, 300, 200);
  line(455, 200, 685, 200);
  
  line(70, 190, 70, 210);
  line(685, 190, 685, 210);
  
  fill(#64B3FF);
  text("35 MINUTES", 378, 210);
  text("ASSUMING NO TRAFFIC", 380, 80);
  text("14-20 STOPS", 378, 233);
  text("BAY PLAZA MALL", 691, 235);
  
  fill(#007C0F);
  text("HOSTOS CC", 125, 858);
  text("FORDHAM RD", 92, 435);
  
  fill(#007C0F);
  noStroke();
  circle(100, 785, 45);
  
  fill(255);
  text("4", 100, 792);
  
  fill(#0064CB);
  rect(220, 311, 70, 25);
  
  fill(255);
  text("BX12+", 220, 320);
}
