void intro() {
  background(#A9D1AD);
  
  //startbutton
  tactileRect(300, 500, 200, 80);
  fill(255);
  rect(300, 500, 200, 80);
  fill(0);
  text("Start", 400, 530);
}

void introClicks() {
  
  if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600){
     mode = GAME;
  
  }
}
