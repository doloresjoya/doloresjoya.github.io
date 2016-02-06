float pointX = 0;
float pointY = 0;
float xspeed = 8;
float yspeed = 8;
PImage img;

void setup(){
  size(800, 250, P3D);
  smooth();
  pointX = 0;
  pointY = 0;
  background(255);
  img = loadImage("hig.png");
  
  
}
 
void draw(){
  
  stroke(pointX, pointY, pointX/2);
  strokeWeight(mouseX/2);
  point (pointX, pointY);
 
   
  pointX = pointX + xspeed;
  pointY = pointY + yspeed;
   
  if (pointX > width || pointX < 0){
    xspeed = xspeed * -1;
  }
  if (pointY > height || pointY <0){
    yspeed = yspeed * -1;
  }
  
  image(img, 332, 50, 175, 175);
  //fill(0, 0, 0);  
  //PFont font;
  //font = loadFont("HelveticaNeue-UltraLight-80.vlw");
  //textFont(font, 80);
  //text("HIG", 250, 283);
  
  //fill(255);
  //ellipse(350, 250, 200, 200);
  
}