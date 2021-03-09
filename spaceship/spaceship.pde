// Monica Ly
// robot assignment
// similar to exercise 7-10

// 500px or larger
// must have: 
/* arc at top 
rect with round corners at top
reg rect inside 
three ellipses evenly spaced */ 
// draw about 4 or 5 to the screen
// one or more functions 
// must have 4 arguments: x pos, y pos, size, color

void setup() { 
  size(800, 800); 
  background(0);
}

void draw() { 
  // background(0);
  stars();
  stars();
  spaceShip(150, 200, 130, 120, 40);
  spaceShip(500, 150, 100, 200, 40);
  spaceShip(300, 450, 200, 250, 40);
  spaceShip(600, 500, 100, 40, 40);
  spaceShip(400, 650, 80, 180, 40);
}

// create stars
// funprogramming.org/22-Stars-blinking-at-night-fade-out-effect.html
void stars() {
  fill(0, 50);
  rect(400, 400, width, height);
  fill(255);
  ellipse(random(width), random(height), 3, 3);
  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), 6, 6);
}

// spaceship 
void spaceShip(int x, int y, int w, color c, int roundCorner) {
  int offset = 50;
  frameRate(7);
  // take away stroke for everything
  // fill(random(c));
  noStroke();
 
 // remix
 // create abduction
 fill(random(200, 255), random(200, 255), 0, random(80, 150));
 beginShape(); 
 // vertex(x - (offset + 50), y + 100);
 vertex(x - offset, y + 100);
 vertex(x, y + 20);
 // vertex(x + (offset + 50), y + 100);
 vertex(x + offset, y + 100);
 endShape();
 // float abw = constrain(w, x - 50, x + 50);
 // arc(x, y + 100, w, offset, 0, PI ); 
 arc(x, y + 100, 100, offset, 0, PI ); 
 
  // fill top of ship and base same color
  fill(c + random(70));
  // create arc dome of spaceship 
  arc(x, y - 20, w - offset, w - offset, PI, TWO_PI);
   
  rectMode(CENTER); 
  // referred to exercise 7-10
  // learningprocessing.com/exercises/chp07/exercise-07-10-spaceship
  // base of spaceship
  // create round corners on top, square on bottom
  rect(x, y, w + offset, w/2, roundCorner, roundCorner, 0, 0); 
 
 // rectangle inside
 // fill different color
 fill(0, 0, c, 150);
 rect(x, y, w, w/4);

 // referred to exercise 7-10 for keeping the ellipses within the spaceship
 float diam = w * 0.125;  // ex 7-10
 // create 3 ellipses evenly spaced
 // for (x = 0; x < width; x += 40) {
   for (float windowX = x-diam*2; windowX <= x+diam*2; windowX += diam*2) {  // ex 7-10
   // flashing colors
   fill(random(c), random(c), random(c)); // random(100, 200)
   // ellipse(x/2, y, w/8, w/4);
   ellipse(windowX, y, w/4.5, w/4);
}
 }
 
