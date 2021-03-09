// look a star!

void instructions() {
  // is there an undraw feature/function?
  // ok using if statement to get rid of the instruction when clicked
  if(mousePressed == false) {
  textSize(20);
  text("Click and hold for a secret message!", width/2 - 150, 50);
}
}

void starMessage() {
  // secret message appears when user clicks and holds onto mouse button
  if (mousePressed == true) {
  textSize(36);
  text("Look, a star!", width/2 - 300, 50);
  fill(255);
  textSize(20);
  text("Press any key", width/2 - 300, 80);
  text("for another secret", width/2 - 300, 100);
}
}

void ridingStar() {
   textSize(36);
   fill(255);
   text("Kirby's exploring space!", width/2 - 300, 80);
}
