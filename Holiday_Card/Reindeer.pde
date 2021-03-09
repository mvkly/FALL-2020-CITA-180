
// Reindeer
// reference image 
// https://imgur.com/w5OHFUf
// https://images.app.goo.gl/syiinGUmypVBWgdX6

// define the class
class Reindeer {
  // variables 
  color c; 
  color c2; 
  color c3;
  color c4;
  float x; 
  float y; 
  float speed; 
  
  // Constructor 
  // Reindeer(int tempC, int tempX, int tempY, int tempSpeed) {
  Reindeer(int tempX, int tempY) {
  //c = tempC;
  // colors 
  // base brown (body) #D38D5F
  // accent light brown (mouth) #DEAA87
  // dark brown (antler) #784421
  // cherry red (nose) #FF2A2A
    c = #D38D5F;  // body
    c2 = #DEAA87; // accents
    c3 = #784421; // antler 
    c4 = #FF2A2A; // nose
    x = tempX;
    y = tempY; 
    // speed = tempSpeed;
  }
  
  // create display function
  void display() {
/* --- Body --- */
// setup
noStroke();
fill(c);
// rect(x, y, x/2, y/2, 30);

// draw tail 
// TAIL
ellipse(x + (x/2 * (1.8)), y + (y/7.5), x * 0.25, y * 0.1);

// draw the body
// BODY
fill(c);
//rect((x + (x/2)), (y + (y/3)), (x + (x/15)), y/2, 30);
rect((x + (x/2)), (y + (y/3)), (x - (x/5)), y/2, 30);

// draw the legs
// LEGS
fill(c);
// left leg
rect(x + (x/5 - 5), y + (y/2), x/6, y - (y/6));
// right leg
// rect(x + (x/3), y/2, x/3, y/2);
// rect(x + (x/2 * 1.7), y + (y/2), x/6, y);
rect(x + (x/2 * 1.7), y + (y/2), x/6, y - (y/6), 0, 30, 0, 0);

/////////////////////////
/* --- Head --- */
// setup
rectMode(CENTER);
// draw the antlers
// ANTLERS
stroke(c3);
strokeWeight(10);
// line(x/2, y/2, (x + (x/5)), (y + (y/5)));
line(x - (x/5), y + (y/5), x - (x/5), y - (y/2));
line(x + (x/5), y + (y/5), x + (x/5), y - (y/2));
fill(c3);
noStroke();
arc(x - (x/5), y - (y/2.5), x/4, x/15, 0, PI); 
arc(x + (x/5), y - (y/2.5), x/4, x/15, 0, PI); 

// rest of setup
noStroke();
// draw the head
// HEAD
fill(c);
circle(x, y, x - (x/3));

// draw ears
// EARS

// draw area around mouth 
// MOUTH
// fill
fill(c2);
circle(x, y + (y/6), x/3);

// draw the eyes and nose
// EYES
// float diam;
// for (x = width; x < height; diam = x * 0.125) { 
// for (int x = tempX - (tempX/2); x < height; x += (x/2)) {
// for (float circ = 50; circ >= x - (x/2) && circ <= x + (x/2) ; circ += 50) {
for (float circ = x - (x/8); circ <= x + (x/4) ; circ += 70) {
  fill(0);
  circle(circ, y - 30, x/7);
  fill(255);
  circle(circ - 13, y - 35, x/20);
  circle(circ - 5, y - 20, x/55);
  //fill(#E39059);
  //circle(circ, y - 30, x/12);
}
// NOSE
// fill
fill(c4); 
circle(x, y, x/6);
// white dot on nose
fill(255);
circle(x - 10, y - 10, x/25);
  }
}
