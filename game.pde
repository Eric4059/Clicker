void game() {
  textSize(60);
  //backgorund
  background(#A9D1AD);


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
  image(ball, x, y, 100, 100);

  //movement
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < 100 || x > 700) {
    vx = vx * -1;
  }

  if (y < 290 || y > 710) {
    vy = vy * -1;
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
  square(700, 120, 50);
  image(start, 725, 145, 30, 30);

  //cursor
}


void gameClicks() {

  if (dist(mouseX, mouseY, x, y) < 75) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
  } else if (mouseX > 50 && mouseX < 750 && mouseY > 250 && mouseY < 750) {
    lives = lives - 1;

    if (lives == 0) {
      cursor();
      mode = GAMEOVER;
    }
  }

  if (mouseX > 700 && mouseX < 750 && mouseY > 120 && mouseY < 170) {
    start = loadImage("pause.png");
  } else {
    start = loadImage("start.png");
  
  }
}
