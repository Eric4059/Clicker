void game() {
  //backgorund
  background(#A9D1AD);

  //targetboundaries
  strokeWeight(10);
  fill(#A9D1AD);
  rect(50, 250, 700, 500);

  //target
  strokeWeight(5);
  stroke(255);
  fill(0);
  image(ball, x, y, 70, 70);

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
}


void gameClicks() {
  mode = GAMEOVER;
}
