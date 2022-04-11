void pause() {
  fill(255);
  stroke(#87B494);
  tactileRect(700, 120, 50, 50);
  square(700, 120, 50);
  image(start, 725, 145, 30, 30);
}

void pauseClicks() {
  if (mouseX > 700 && mouseX < 750 && mouseY > 120 && mouseY < 170) {
    start = loadImage("start.png");
    mode = GAME;
  }
}
