//MODE VARIABLES

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//TARGERT VARIABLES
float x, y, d; 
float vx;
float vy;
float sliderX;


PImage chosenTarget;
PImage ball;
PImage home;
PImage racket;
PImage start;
PImage options;
PImage bowling;


int score;
int lives;
int highscore;

//COLOR PALETTE 
void setup() {
  size(800, 800, P2D);
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
  sliderX = 215;
  

  //target img
  ball = loadImage("blah.png");
  imageMode(CENTER);

  home = loadImage("home.png");

  racket = loadImage("racket.png");

  start =  loadImage("start.png");

  options = loadImage("options.png");

  bowling = loadImage("bowling.png");
  
  chosenTarget = ball;
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
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


void tactileCircle(float posX, float posY, float r) {
  if (dist(posX, posY, mouseX, mouseY) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}
