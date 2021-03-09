void scrolling() { 
 // -- Scrolling Text -- 
 // font details/settings
 // display creator message at x
 textAlign(LEFT); 
 textFont(f, 16);
 text(creator[index], x, 20);
 
 // make x go left
 x -= 2;
 float w = textWidth(creator[index]); // textWidth determines width of string
 // determine if x is off the screen
 if (x < -w) {
   x = width; // reset back to start on right
  index = (index + 1) % creator.length; // index mod length of quote, accumulate to get entire string
 }
}
