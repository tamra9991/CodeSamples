void setup () {
  size(500, 500);
  
}

int rectColor;
color blue = color(0, 0, 255);
color red = color(255, 0, 0);

void draw(){
  
  background(255);
  fill(rectColor);
  rectMode (CENTER);
  rect (height/2, width/2,250, 250);
  if (mouseX >125 && mouseX < 375 && mouseY >  125 && mouseY <375){
    rectColor = red;

  } else {
    rectColor= blue;
  }
}