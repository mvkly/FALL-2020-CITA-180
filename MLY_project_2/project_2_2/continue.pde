// === MISC FUNCTIONS ===

void cont() {
// === CONTINUE OR STOP? === 
  if (clicks == 5) {
  fill(255);
  text("Reroll?", width/2, height/2);
  text("Yes", width/2 - 100, height/2 + 50);
  text("No", width/2 + 100, height/2 + 50);
    if (mousePressed == true && mouseX < width/2) {
      clicks = 2;
    }
    if (mousePressed == true && mouseX > width/2) {
     clicks = -1; 
    }
  }
}
