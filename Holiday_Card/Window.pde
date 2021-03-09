
class Window {
  // variables
  int x; 
  int y; 
  int w; 
  int h; 
  int xpos;
  int ypos; 
  
  // constructor
  Window(int tempX, int tempY, int tempW, int tempH) {
  x = tempX;
  y = tempY;
  w = tempW;
  h = tempH; 
  xpos = x - 100;
  ypos = y - 100;
  }
  
  // display
  void display() {
  noStroke();
  rectMode(CENTER);
  // frame of window (border)
  fill(#432822);
  rect(x, y, w, h);
  
/* --- Under window --- */
  // underlying 
  fill(#242376);
  rect(x, y, w, h - 100);
  
  
  // moon..?
  fill(255);
  // rect(xpos, ypos, w/4, h/4);
  // arc(xpos, ypos, 70, 70, 0, PI + HALF_PI/3);
  circle(xpos, ypos, 50);
  fill(#242376);
  circle(xpos + 20, ypos, 50);
  
  
/* --- above window --- */  
  // window
  fill(200, 150);
  rect(x, y, w - (w/5), h - (h/5));
  
   snows.display();
   
  // x part of window
  fill(#432822);
  rect(x, y, w / 10 * 0.2, h);
  rect(x, y, w, h / 10 * 0.2);
  
  // create curtains 
  fill(#891B00);
  rect(x - w/2, y + 50, w / 4, h + 100);
  rect(x + w/2, y + 50, w / 4, h + 100);
   if (mousePressed == true) {
     fill(255, 0, 0);
     greetings.display();
      //if ((xpos < w + 150) && (ypos < h + 150)) {
      //xpos += 10;
      //ypos += 10;
      //xpos = constrain(9, 0, 100);
      //ypos = constrain(00, 0, 100);
      
      //if (xpos > w + 100) {
      //  xpos = -15;
      //  ypos = -15;
        
      //}
      //}
      }
  }
  }
