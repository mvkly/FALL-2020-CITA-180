/*-- KIRBY -- */
void kirby(int x, int y, int r, int w) { 
  // int offset = 20;
  // color c
  // ARMS
  strokeWeight(2);
  fill(#f3a5aa);
  ellipse(x - 100, y + 20, w - 10, w + 30);
  ellipse(x + 100, y + 20, w - 10, w + 30);
 //  arc(x - 80, y + 20, 80, 80, 0, PI+QUARTER_PI, OPEN);
  
   // FEET
  fill(#e0005b);
  ellipse(x - 50, y + 100, w + 30, w - 10);
  ellipse(x + 50, y + 100, w + 30, w - 10);
  // shading for feet 
  
  // BODY
  // stroke();
  // fill pink
  strokeWeight(2);
  fill(#f3a5aa);
  circle(x, y, r);
  
  //// shading on body
  //noStroke();
  //fill(#eb6b8e);
  //arc(x, y + 80, 100, 20, 0, PI+QUARTER_PI, OPEN);
  
  // FACE
    // blush 
  fill(#eb6896);
  noStroke();
  ellipse(x - 60, y + 10, w - 10, w/2);
  ellipse(x + 60, y + 10, w - 10, w/2);
  
  // eyes
  stroke(0);
  strokeWeight(2);
  // perimeter left eye
  fill(#0076c0);
  ellipse(x - 30, y - 20, w/2, w);
  // black
  fill(0);
  noStroke();
  ellipse(x - 30, y - 20, w/2, w - 20);
  // white
  stroke(0);
  strokeWeight(4);
  fill(255);
  ellipse(x - 30, y - 30, w/3, w - 25);

  // perimeter right eye
  fill(#0076c0);
  strokeWeight(2);
  ellipse(x + 30, y - 20, w/2, w);
  // black
  fill(0);
  noStroke();
  ellipse(x + 30, y - 20, w/2, w - 20);
  // white
  stroke(0);
  strokeWeight(4);
  fill(255);
  ellipse(x + 30, y - 30, w/3, w - 25);
  
  
  // mouth
  // stroke(1);
  strokeWeight(2);
  noFill();
  
  arc(x, y + 10, 25, 20, 0, PI ); 
  
}
// --- MOVE KIRBY ---
  void moveKirby() {
  y += 10;
  // constrain to window
  // y = constrain(y, 0, height);
  }
  
// -- STOP KIRBY -- 
void stopKirby() {
 if(y >= height - 200) {
   y = 600;
 
 }
}

void moveKirbyUp() { 
  y += 10;
}
