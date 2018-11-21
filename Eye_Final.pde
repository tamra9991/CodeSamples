// Experimental class project to create an abstract pattern.

String path;
PImage img;

void setup() {
  size(2000, 2000);
  background(255);
  // img = loadImage("eye_background2.png"); //background image - commented because file needs to be local
  frameRate(1);
  noFill();
  path = dataPath("####");
  ellipseMode(CENTER);
}

void draw() {
  // image(img, 10, 10); //bacgkround image
  /*
  println(frameCount);  //saves image at each listed frame
   if (frameCount == 18) saveFrame(path);
   if (frameCount == 19) saveFrame(path);
   if (frameCount == 20) saveFrame(path);
   if (frameCount == 21) saveFrame(path);
   if (frameCount == 22) saveFrame(path);
   */
   
  int a = 1000;
  int b = 600;
  int s = 1;
  int x = 1000;
  int x2 = 810;
  int x3 = 410;
  int y = 1000;
  int y2 = 1190;
  int y3 = 790;

  for (int i = 0; i<20; i ++) { //loop for ellipses
    ellip(random(x2, y2), random(x3, y3), int(random(1, 40)), int(random(1, 40)));
  }
  for (int i = 0; i<20; i ++) { //loop for lines

    lin(a, b, int(random(x2, y2)), int(random(x3, y3)));
  }
  //  image(img, 10, 10); 

  strokeWeight(140); //ellipse that covers edges of loops to make a circle
  stroke(255);
  ellipse(x, b, 530, 530);
}
void ellip (float x, float y, int s, int d) { //code for ellispe
  strokeWeight(15);
  int x1= 0;
  int y1 = 50;
    stroke(0, 0, 0, 15);
  ellipseMode(CENTER);
  ellipse(x, y, s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
  ellipse(x+int(random(x1, y1)), y+int(random(x1, y1)), s, s);
}
void lin (float a, float b, float x2, float y2) {
  strokeWeight(1);
  int x1= -50;
  int y1 = 50;
  stroke(0, 0, 0, 30);
  line(a, b, x2, y2);
  line(a, b, x2+int(random(x1, y1)), y2+int(random(x1, y1)));
  line(a, b, x2+int(random(x1, y1)), y2+int(random(x1, y1)));
  line(a, b, x2+int(random(x1, y1)), y2+int(random(x1, y1)));
  line(a, b, x2+int(random(x1, y1)), y2+int(random(x1, y1)));
  line(a, b, x2+int(random(x1, y1)), y2+int(random(x1, y1)));
  line(a, b, x2+int(random(x1, y1)), y2+int(random(x1, y1)));
  line(a, b, x2+int(random(x1, y1)), y2+int(random(x1, y1)));
}
