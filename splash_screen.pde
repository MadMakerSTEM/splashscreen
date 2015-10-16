/*  The MadMaker video splash screen.
    
    Author: Owen Brasier
    Date: September 2015
*/


PShape logo;
PFont font;
PImage img;

String title = "MadMaker Title!";

void setup() {
  size(1280, 720);
  logo = loadShape("logo.svg");
  font = loadFont("LetterGothicStd-48.vlw");
  img = loadImage("robot.png");
  drawBg();
}

int x = 0, y = 0;
int count = 0;

void draw() {
  lineOne();
  lineTwo();
  //saveFrame("frame-#####.jpg"); // jpg for low file size, use lossless format if you actually make animations
  if(count >= 95) {               // point where they intersect
    noLoop();                     // stop
  }
  count++;
}

void drawBg() {
  textFont(font, 48);
  background(59, 94, 242);
  shape(logo, 75, 175);
  fill(255); 
  noStroke();
  text(title, 100, 360);  // add title text
  rect(2*width/3, 0, width, height);
  image(img, 2*width/3, 50, 400, 400);
}

// draw black line
void lineOne() {
  fill(0);
  rect(x, 520, x+4, 10);
  x+=4;
}

//draw white line
void lineTwo() {
  fill(255);
  rect(760, y, 10, y+4);
  y+=4;
}