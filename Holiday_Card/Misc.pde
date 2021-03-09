/* --- Message --- */
class Greetings {
  // variables?
  int size;
  int x;
  int y;
  Greetings(int tempSize, int tempX, int tempY) {
    size = tempSize;
    x = tempX;
    y = tempY;
  }
  void display() {
   //  if (mousePressed == true) {
    // create font
    //PFont comic;
    //comic = createFont("ComicSansMS", 48);
    //textFont(comic);
    textSize(size);
    fill(255);
    // textAlign(CENTER, TOP);
    // https://processing.org/reference/textAlign_.html
    text("Happy Holidays!", x, y);
    textSize(20);
    text("Enjoy winter break", width/2 - 100, 870);
   // }
  }
}

class Wall {
 // variables?
 int x;
 int y; 
 
 Wall(int tempX, int tempY) {
   x = tempX;
   y = tempY;
   //down = tempY;
 }
 
 //display
 void display() {
   for (int y = 0; y < width; y += 60) {
     stroke(#5D2C20);
     line(x, y, width, y);
   }
 }
}

/* --- Instruction Message --- */
void instruct() {
  if (mousePressed == false) {
 textSize(20);
 fill(250);
 text("Click and hold for holiday greeting!", width/2 - 150, 870);
}
}

/* Christmas Tree */
void tree() {
  //setup 
   rectMode(CENTER);
 // brown trunk
  fill(#432822);
  rect(50, height, 70, 150);
  
  // christmas tree
  fill(#0C5805);
  triangle(-250, 850, 40, 300, 300, 850);
  //triangle(-200, 550, 40, 250, 250, 550);
  //triangle(-140, 500, 40, 200, 200, 500);
   for (float border = 0; border <= 100; border += 10) {
        for (float top = 450; top <= 550; top += 60) {
  fill(random(70, 140), random(70, 140), 0);
  ellipse(border, top, random(5, 10), random(5));
        }
   }
  
  for (float border = 0; border <= 150; border += 10) {
        for (float top = 550; top <= 600; top += 40) {
  fill(random(70, 140), random(70, 140), 0);
  ellipse(border, top, random(5, 10), random(5));
        }
  }
  for (float border2 = 0; border2 <= 200; border2 += 10) {
      for (float top = 650; top <= 750; top += 40) {
  fill(random(70, 140), random(70, 140), 0);
  ellipse(border2, top, random(5, 10), random(5));
  
}
  }
}
