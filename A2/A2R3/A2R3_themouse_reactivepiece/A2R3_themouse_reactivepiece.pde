PVector dot;

void setup(){
  size(1024, 1024);
  background(255);
  textAlign(CENTER);
  rectMode(CENTER);
  
  dot = new PVector();
}

void draw(){
  fill(255);
  rect(width/2, height/2, width, height);
  
  if(mousePressed && (mouseButton == LEFT)) {
    dot.set(mouseX, mouseY);
    
    noStroke();
    fill(#E8BC0C);
    circle(dot.x, dot.y, 50);
  } else {
    
    noStroke();
    fill(0);
    
    text("CLICK AND DRAG ANYWHERE", 512, 125 + sin(frameCount*0.09)*15);
    circle(dot.x, dot.y, 50);
  }
}
