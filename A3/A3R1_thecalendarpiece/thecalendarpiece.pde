void setup() {
  size(720, 720);
  background(255);
  rectMode(CENTER);
  
}

void draw() {
  fill(#F2ECC6);
  rect(width/2, height/2, width, height);
  
  
  
  // MONTH AND YEAR WE ARE IN
  fill(#85A5B9);
  textSize(50);
  text("May 2024", 24, 60);

  // DAYS OF THE WEEK
  fill(0);
  textSize(15);
  text("Sunday", width*0.05, height*0.15);
  text("Monday", width*0.18, height*0.15);
  text("Tuesday", width*0.30, height*0.15);
  text("Wednesday", width*0.43, height*0.15);
  text("Thursday", width*0.58, height*0.15);
  text("Friday", width*0.73, height*0.15);
  text("Saturday", width*0.86, height*0.15);
  
  // TODAY'S INDICATOR
  fill(#FF0000);
  noStroke();
  rect(446, 400, 99, 99);
  
  //DATES, HOLIDAYS, ETC..
  noFill();
  stroke(0);
  strokeWeight(2);
  rect(360, 410, 700, 575);
  
  // VERTICAL LINES  
  line(106, 122, 106, 695);
  line(196, 122, 196, 695);
  line(296, 122, 296, 695);
  line(396, 122, 396, 695);
  line(496, 122, 496, 695);
  line(596, 122, 596, 695);
  
  // HORIZONTAL LINES
  line(10, 250, 710, 250);
  line(10, 350, 710, 350);
  line(10, 450, 710, 450);
  line(10, 550, 710, 550);
  
  // HOLIDAYS/SPECIAL DATES
  fill(#7C3D3E);
  text("Cinco de Mayo", 15, 340 + sin(frameCount*0.05)*5);
  
  text("May Day", 300, 220 + sin(frameCount*0.05)*5);
  text("IWD", 300, 240 + sin(frameCount*0.05)*5);
  text("Armed Forces Day", 600, 442 + sin(frameCount*0.05)*5);
  text("Mother's Day", 15, 440 + sin(frameCount*0.05)*5);
  text("Victoria Day", 110, 540 + sin(frameCount*0.05)*5);
  text("Memorial Day", 110, 690 + sin(frameCount*0.05)*5);
  
  
  // DATES + TODAYS DATE
  fill(0);
  textSize(25);
  
  text("1", 300, 145);
  text("2", 400, 145);
  text("3", 500, 145);
  text("4", 600, 145);
  text("5", 15, 270);
  text("6", 110, 270);
  text("7", 200, 270);
  text("8", 300, 270);
  
  text("9", 400, 270);
  text("10", 500, 270);
  text("11", 600, 270);
  text("12", 15, 375);
  text("13", 110, 375);
  text("14", 200, 375);
  text("15", 300, 375);
  text("16", 400, 375 + sin(frameCount*0.05)*5);
  
  text("17", 500, 375);
  text("18", 600, 375);
  text("19", 15, 470);
  text("20", 110, 470);
  text("21", 200, 470);
  text("22", 300, 470);
  text("23", 400, 470);
  text("24", 500, 470);
  
  text("25", 600, 470);
  text("26", 15, 570);
  text("27", 110, 570);
  text("28", 200, 570);
  text("29", 300, 570);
  text("30", 400, 570);
  text("31", 500, 570);
}
