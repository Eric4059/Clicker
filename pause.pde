void pause() {
  fill(255);
  stroke(#87B494);
  tactileRect(700, 120, 50, 50);
  square(700, 120, 50);
  image(start, 725, 145, 30, 30);
  
  
  //quit button
  fill(255);
  tactileRect(550, 120, 100, 50);
  rect(550, 120, 100, 50);
  fill(0);
  textSize(40);
  text("Quit", 600, 140);
}

void pauseClicks() {
  if (mouseX > 700 && mouseX < 750 && mouseY > 120 && mouseY < 170) {
    start = loadImage("start.png");
    mode = GAME;
  }
  
  if(mouseX > 550 && mouseX < 650 && mouseY > 120 && mouseY < 170){
  mode = INTRO;
  
  }
}
