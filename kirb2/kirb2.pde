// Monica Ly
// Project 1
// Kirby
int x = 0;
int y = -150;
int w = -1500;
int h = 800;
int ypos = height/2;

// http://learningprocessing.com/examples/chp07/example-07-05-zoog-functions

void setup() {
  size(800, 800);
  // #FF90E1
 
}


void draw() {
 drawBackground();
 kirby(400, y, 200, 50);
 // stop Kirby when he gets to lower half
 moveKirby();
 stopKirby();
 // make a star appear
 instructions();
 
 star();
 moveStar();
 // constrainStar();
 starMessage();
 // can I erase everything to start the space part?
 // https://processing.org/reference/mouseReleased_.html
 //if(mouseReleased == true) {
 //spaceBackground();
 //}
 if(keyPressed == true) {
   keyPressed();
 }
}

//void mouseReleased() {
  void keyPressed() {
  spaceBackground();
  // make kirby off screen at first
  // move kirby off
  ridingStar();
  circ();
  kirbyStar();
 
 
  }
  
 
    //ypos += random(10);
    //ypos -= random(10);
  // }
  


//void moveStar() {
//  if(w<=0);
//  w += 10;
//     if(x <= width/2) {
//       w = width/2;
//     }
//}
