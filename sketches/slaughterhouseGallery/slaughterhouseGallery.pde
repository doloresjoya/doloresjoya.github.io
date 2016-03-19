import SimpleOpenNI.*;
import processing.video.*;
import deadpixel.keystone.*;


Keystone ks;
CornerPinSurface quadMap;
CornerPinSurface quadMap2;
CornerPinSurface quadMap3;
CornerPinSurface quadMap4;
CornerPinSurface quadMap5;
CornerPinSurface quadMap6;
CornerPinSurface quadMap7;
//Movie movie;
Capture cam;

PImage img;
PGraphics texture;

void setControlPointsColor(int newColor){
}

void setGridColor(int newColor){
}


void setup() {
  size(1024, 768, P3D);
               
  ks = new Keystone(this);
  
  /******/
  quadMap = ks.createCornerPinSurface(640, 480, 20);
  quadMap.setControlPointsColor( color(255,0,0) );
  
  quadMap2 = ks.createCornerPinSurface(640, 480, 20);
  quadMap2.setControlPointsColor( color(255,0,0) );
  
  quadMap3 = ks.createCornerPinSurface(640, 480, 20);
  quadMap3.setControlPointsColor( color(255,0,0) );
  
  quadMap4 = ks.createCornerPinSurface(640, 480, 20);
  quadMap4.setControlPointsColor( color(255,0,0) );
  
  quadMap5 = ks.createCornerPinSurface(640, 480, 20);
  quadMap5.setControlPointsColor( color(255,0,0) );
  
  quadMap6 = ks.createCornerPinSurface(640, 480, 20);
  quadMap6.setControlPointsColor( color(255,0,0) );
  
  quadMap7 = ks.createCornerPinSurface(640, 480, 20);
  quadMap7.setControlPointsColor( color(255,0,0) );
  
  quadMap.setControlPointsColor( color(255,0,0) );
  texture = createGraphics(640, 480, P2D);
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  set(0, 0, cam);
  texture.beginDraw(); //start drawing onto the texture surface
  img = loadImage("gallery03.jpg");
  background(img); //draw background image of gallery
  texture.endDraw(); //end drawing onto the texture surface
                             
  quadMap.render(cam);
  quadMap2.render(cam);
  quadMap3.render(cam);
  quadMap4.render(cam);
  quadMap5.render(cam);
  quadMap6.render(cam);
  quadMap7.render(cam);
}

void keyPressed(){
  switch(key){
    case 'c':
    ks.toggleCalibration();
    break;
    
    case 'l':
    ks.load("mapping.xml");
    break;
    
    case 's':
    ks.save("mapping.xml");
    break;
  }
}