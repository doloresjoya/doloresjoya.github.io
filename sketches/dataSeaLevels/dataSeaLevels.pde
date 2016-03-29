1 /* @pjs preload="sl_global.txt"; */

Table xy;
//String[] lines;
int index = 0;
int x = 0;
int y = 0;
int z =0;

void setup() {
  size(1800, 1000);
  xy = loadTable("sl_global.txt", "tsv");
  //lines = loadStrings("sl_global.txt");
  noSmooth();
  frameRate(32);
  stroke(0);
  background(162, 209, 255);
}

void draw() {
  stroke(155);
  line(0, height/2, width, height/2);
  stroke(18, 102, 183);
  translate(0, 500);
  if (index < xy.getRowCount()){
    //int x = xy.getInt(index, 0);
    //x = x - 1500;
    //println(x);
    int y = xy.getInt(index, 1);
    println(y);
    //point(x, y);
    z = z + 2;
    line(z, 0, z, -y);
    
    x++;
    index++;
  }
  //point(x, y);
}