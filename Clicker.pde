//MODE VARIABLES

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//TARGERT VARIABLES
float x, y, d; 
float vx;
float vy;

PImage ball;
PImage home;
PImage racket;

int score;
int lives;

//COLOR PALETTE 
void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  textSize(60);
  strokeWeight(5);


  //target Initialization
  x = 400;
  y = 400;
  d = 100;
  vx = 3.3;
  vy = -1.4;
  score = 0;
  lives = 3;

  //target img
  ball = loadImage("blah.png");
  imageMode(CENTER);

  home = loadImage("home.png");
  
  racket = loadImage("racket.png");
}


void draw() {
  if (mode == INTRO) {
    cursor();
    intro();
  } else if (mode == GAME) {
    noCursor();
    game();
  } else if (mode == PAUSE) {
    cursor();
    pause();
  } else if (mode == GAMEOVER) {
    cursor();
    gameover();
  } else {

    println("Error: Mode = " + mode);
  }
}




void tactileRect(int x, int y, int w, int l) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+l) {
    stroke(255);
  } else {
    stroke(0);
  }
}



void tactileCircle(int X, int Y, int r) {
  if (dist(mouseX, mouseY, X, Y) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}
