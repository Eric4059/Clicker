int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;



void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  textSize(60);
  strokeWeight(5);
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
  } else {

    println("Error: Mode = " + mode);
  }
}




void tactileRect(int x, int y, int w, int l){
if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+l) {
    stroke(255);
  } else {
    stroke(0);
  }


}
