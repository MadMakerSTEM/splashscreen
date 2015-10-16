PShape logo;
PFont font;
PImage img;

void setup() {
  size(1280, 720);
  logo = loadShape("logo.svg");
  font = loadFont("LetterGothicStd-48.vlw");
  img = loadImage("robot.png");
  textFont(font, 48);
  background(59, 94, 242);
  drawBg();
}

int x = 0, y = 0;
int count = 0;

void draw() {
  drawone();
  drawtwo();
  saveFrame();
  if(count >= 95) {
    exit();
  }
  count++;
}

void drawBg() {
  shape(logo, 75, 175);
  fill(255); 
  noStroke();
  text("Setting up the\n Arduino Software", 100, 360);
  rect(2*width/3, 0, width, height);
  image(img, 2*width/3, 50, 400, 400);
}

void drawone() {
  fill(0);
  rect(x, 520, x+4, 10);
  x+=4;
}

void drawtwo() {
  fill(255);
  rect(760, y, 10, y+4);
  y+=4;
}