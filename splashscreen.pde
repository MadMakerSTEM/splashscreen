/*  The MadMaker video splash screen.
    
    Author: Owen Brasier
    Date: September 2015
*/


PShape logo;
PFont font;
PImage img;

String title = "MadMaker Title!"; // set title

int x = 0, y = 0;
int count = 0;

void setup() {
  size(1280, 720);                // set window size, 720p
  logo = loadShape("logo.svg");
  font = loadFont("LetterGothicStd-48.vlw");
  img = loadImage("robot.png");
  drawBg();
}

void draw() {
  lineOne();                      // animate black line
  lineTwo();                      // animate white line
  //saveFrame("frame-#####.jpg"); // jpg for low file size, use lossless format if you actually make animations
  if(count >= 95) {               // point where they intersect
    noLoop();                     // stop
  }
  count++;
}

// draw the background and title
void drawBg() {
  textFont(font, 48);
  background(59, 94, 242);
  shape(logo, 75, 175);           // add logo
  fill(255); 
  noStroke();
  text(title, 100, 360);          // add title text
  rect(2*width/3, 0, width, height);    // add white box on right
  image(img, 2*width/3, 50, 400, 400);  // add robot
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