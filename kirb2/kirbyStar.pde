 
 
 void kirbyStar() {
     noStroke();
  fill(#FFFA64);
  circle(x + 900, 400, 50);
  kirby(x + 900, 400, 200, 50);
  // if(x >= 800) {
    x -= 5; 
    //y += random(400, 500);
    //if(x == 0) {
    //  x = 800;
    //  x -= 5;}
  //}
  }
  
  void circ() {
  fill(#FFFA64);
  circle(x + 900, 480, 200);
  x -= 5;
  }
