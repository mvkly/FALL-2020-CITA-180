// Monica Ly
// Holiday Card assignment (solo group)
// 11/13/20

/* --- Instructions --- */
// Use at least 3 classes. 
// At least one thing must be animated in some way.
// The writeup doesn't need to be major. About 50 to 100 words

/////////////////////////
/* --- the code --- */

// create
Reindeer reindeer; 
Snow snow;
Greetings greetings;
Window window;
Lights lights; 
Wall wall;
Snows snows; 

// Window window2;

void setup() { 
  size(900, 900);
  //  Reindeer(int tempC, int tempX, int tempY)
  // #B47747
  reindeer = new Reindeer(300, 300);
  snow = new Snow(2, 5, 5);
  greetings = new Greetings(36, width / 2 - 130, height/6);
 // window = new Window(width/2, height/2, 50, 50);
  window = new Window(width/2, height/2, 500, 500);
  lights = new Lights(0, 50, 30, 70);
  wall = new Wall(0, 0);
  snows = new Snows(2, 5, 5);
}

void draw() {
  background(#764336);
  wall.display();
  instruct();
  // background(#1E2B6F);
 
 if (mousePressed == true) {
  // snow.display();
 }
  window.display();
  lights.display();
  tree();
}
