void game() {
  textSize(60);
  //backgorund
  background(#A9D1AD);

  if (lives == 0) {
    cursor();
    mode = GAMEOVER;
    highscore = max(highscore, score);
  }

  //score & lives
  fill(0);
  text("Score: " + score, 160, 80);
  text("Lives: " + lives, 155, 150);



  //targetboundaries
  strokeWeight(10);
  stroke(255);
  fill(#A9D1AD);
  rect(50, 250, 700, 500);

  //target
  strokeWeight(5);
  stroke(255);
  fill(0);
  image(chosenTarget, x, y, 10+(width/sliderX)*20, 10+(width/sliderX)*20);

  //movement
  x = x + vx;
  y = y + vy;

  //bouncing
  circle(x, y, 5);
  if (x-(10+(width/sliderX)*10) < 50 || x+(10+(width/sliderX)*10) > 750) {
    vx = -vx;
  }

  if (y-(10+(width/sliderX)*10) < 250 || y+(10+(width/sliderX)*10) > 750) {
    vy = -vy;
  }

  if (mouseX > 50 && mouseX < 750 && mouseY > 250 && mouseY < 750) {
    noCursor();
    image(racket, mouseX, mouseY+80, 300, 300);
  } else {
    cursor();
  }

  //pause
  fill(255);
  stroke(#87B494);
  tactileRect(700, 120, 50, 50);
  square(700, 120, 50);
  image(start, 725, 145, 30, 30);

  //cursor
}


void gameClicks() {

  if (dist(mouseX, mouseY, x, y) < 25+(width/sliderX)*20) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
  } else if (mouseX > 50 && mouseX < 750 && mouseY > 250 && mouseY < 750) {
    lives = lives - 1;
  }

  if (mouseX > 700 && mouseX < 750 && mouseY > 120 && mouseY < 170) {
    start = loadImage("pause.png");
    mode = PAUSE;
  } else {
    start = loadImage("start.png");
    mode = GAME;
  }
}
