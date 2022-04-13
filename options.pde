void options() {
  background(#A9D1AD);
  textSize(100);
  text("Options", 400, 90);

  //choose ball
  fill(255);
  tactileRect(100, 210, 230, 230);
  rect(100, 210, 230, 230);
  tactileRect(470, 210, 230, 230);
  rect(470, 210, 230, 230);
  image(ball, 215, 325, 200, 200);
  image(bowling, 585, 325, 200, 200);


  //play button
  tactileRect(300, 650, 200, 80);
  rect(300, 650, 200, 80);
  textSize(60);
  fill(0);
  text("Play", 400, 680);

  //slider
  //tactileCircle(sliderX, 545, )
  line(100, 545, 330, 545);
  circle(sliderX, 545, 20);
  
  //showing
  image(chosenTarget, 585, 545, 10+(width/sliderX)*20, 10+(width/sliderX)*20); 
  
  //back button
  fill(255);
  tactileRect(40, 40, 100, 50);
  rect(40, 40, 100, 50);
  fill(0);
  textSize(40);
  text("Back", 90, 60);
}


void optionsClicks() {
  if (mouseX > 100 && mouseX < 330 && mouseY > 210 && mouseY < 440) {
    chosenTarget = ball;
  }
  if (mouseX > 470 && mouseX < 700 && mouseY > 210 && mouseY < 440) {
    chosenTarget = bowling;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 730) {
    mode = GAME;
  }
  if(mouseX > 40 && mouseX < 140 && mouseY > 40 && mouseY < 90){
    mode = INTRO;
  
  }
}


void controlSlider() {
  if (mouseX > 100 && mouseX < 330 && mouseY > 530 && mouseY < 550 && mode == OPTIONS) {
    sliderX = mouseX;
  }
}
