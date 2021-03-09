
class Lights {
 // variables
 int x;
 int y; 
 int w;
 int h; 
 
 // constructor
 Lights(int tempX, int tempY, int tempW, int tempH) {
   x = tempX;
   y = tempY;
   w = tempW;
   h = tempH;
 }
 
 // display
 void display() {
   for (int left = 0; left < width; left += 50) {
     // string
     stroke(0);
     line(0, 15, width, 20);
     // lights
     noStroke();
     frameRate(10);
     fill(random(50, 250), 0, 0);
     ellipse(left + 20, y, w, h); 
     fill(0); 
     arc(left + 20, 30, w, h/2, PI, TWO_PI);
   }
 }
}
