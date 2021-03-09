void lights() {
  // frameRate(10);
  // -- RECTANGLES/LIGHTS --
  // Use for or while loop for the small white rectangles on the film. 
  // Also the rectangles have to have round corners like a film strip. 
  for (int x = 0; x < width; x += 30) {
   // make the lights blink
   // frameRate(10);
   
   // -- PURPLE FILM --
   // mouseclick, change the color of the lights 
   // change to mostly monochromatic look
   if (mousePressed && (mouseButton == LEFT)) {
   //fill(random(200, 255), 0, 0, 100);
   fill(random(200, 255), 0, random(200, 255), 200);
   }
   else {
   fill(random(200, 255)); }
   noStroke();
   
   // left/right borders
  //rect(0, 0, 25, height);
  //rect(width - 25, 0, 30, height);
    // for (int y = 10; y < height - 45; y += 50)
    for (int y = 10; y < height - 40; y += 25) {
    rect(0, y, 25, 20, 20); 
    rect(width - 30, y, 25, 20, 20); 
   }
   // top/bottom lights
   // x, y, w, h 
   //int y_pos = 0; 
   // round the corners
   rect(x, height - 30, 25, 20, 20);
   rect(x, 10, 25, 20, 20);
  
  
  }
}
