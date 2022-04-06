void game() {
  textSize(60);
  //backgorund
  background(#A9D1AD);
  
  
  //score & lives
  
  text("Score: " + score, width/5, 80);
  text("Lives: " + lives, width/5 - 10, 140);
  
  
  
  //targetboundaries
  strokeWeight(10);
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
  
  if(y < 290 || y > 710) {
     vy = vy * -1;
  
  }
  
  
  //pause
  
  square(700, 100, 50);
  
  //cursor
  
  image(racket, mouseX, mouseY+80, 300, 300);
}


void gameClicks() {
  
  if(dist(mouseX, mouseY, x, y) < 75){
  score = score + 1;
  vx = vx * 1.1;
  vy = vy * 1.1;
  } else if (mouseX > 50 && mouseX < 750 && mouseY > 250 && mouseY < 750){
  lives = lives - 1;
  
  if(lives == 0){
  mode = GAMEOVER;
  
  }
  }
}
