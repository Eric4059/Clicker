void intro() {
  background(#A9D1AD);
  
  //startbutton
  tactileRect(300, 500, 200, 80);
  fill(255);
  rect(300, 500, 200, 80);
  fill(0);
  textSize(60);
  text("Start", 400, 530);
  
  //title
  fill(255);
  textSize(90);
  text("Whack-A-Ball", 400, 250);
}

void introClicks() {
  
  if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600){
     mode = GAME;
  
  }
}
