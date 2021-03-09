
class Snow {
  // variables
  float min; 
  float max;
  float h; 
  //color c;
  
  // constructor
  Snow(float tempMin, float tempMax, float tempH) {
    //tempMin = min;
    //tempMax = max;
    //tempC = c;
    //c = tempC;
    min = random(tempMin);
    max = random(tempMax);
    h = tempH;
   
  }
    // display
    void display() {
      frameRate(7);
      noStroke();
      // remixed funprogramming.org/22-Stars-blinking-at-night-fade-out-effect.html
      fill(255);
      for (float border = 0; border <= width; border += 10) {
        for (float top = 0; top <= height; top += 30) {
          ellipse(border, random(top), random(min, max), random(h));
      /*   for (float border = 0; border <= width; border += 10) {
        for (float top = 0; top <= height; top += 50) {
      ellipse(border, top, random(min, max), random(h)); */
      //  ellipse(border, random(height), random(min, max), random(h));
      }}
    }
  }
