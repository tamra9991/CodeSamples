void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  frameRate(20);
  
  fill(random(255), random(255), random(255), random(255));
  ellipse(mouseX, mouseY, random(0, 50), random(0, 50));
 
  strokeWeight(20);
  point(mouseX+20, mouseY+40, random(0, 50));
  
}