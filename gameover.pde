void gameover() {
  cursor();
  background(#A9D1AD);
  textSize(100);
  text("GAME OVER", 400, 220);

  //restart
  tactileRect(300, 500, 200, 80);
  fill(255);
  rect(300, 500, 200, 80);
  fill(0);
  textSize(50);
  text("Restart", 400, 535);


  //home
  fill(255);
  tactileCircle(80, 80, 40);
  circle(80, 80, 80);
  image(home, 80, 77, 60, 60);

  //highscore
  text("High Score: " + highscore, 400, 380);
}


void gameoverClicks() {

  if ( mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 580 ) {
    mode = GAME;
    lives = 3;
    score = 0;
    vx = 3.3;
    vy = -1.4;
  }


  if (dist(mouseX, mouseY, 80, 80) < 30) {
    mode = INTRO;
    lives = 3;
    score = 0;
    vx = 3.3;
    vy = -1.4;
  }
}
