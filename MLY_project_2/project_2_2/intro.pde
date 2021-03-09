
// welcome! 
// this is a program that provides you with challenges for among us
// challenges can vary based on whether your role is crewmate or imposter

// click to start
class Intro {
  //int left;
  //int right;
  //int size;
  int xpos; 
  int ypos; 
  int i = 0;

  
  //String[] introduct = {
  //  "This program provides you with challenges for Among Us",
  //  "Challenges are based your role as crewmate or an imposter",
  //};
  
  Intro() {
  }
  
  void display() {
    
    // === stars ===
    // array with stars
    // funprogramming.org/58-Travel-through-space-use-an-array-to-move-stars.html
    background(0);
    int i = 0;
    while (i < 100) {
      point(xstar[i], ystar[i]);
      
      xstar[i] -= starspeed[i];
      if (xstar[i] < 0) {
        xstar[i] = width;
      }
      i += 1;
    }
    
    xpos = width/2;
    ypos = 200; 
    // === TEXT ===
    fill(255);
    textSize(36);
    textAlign(CENTER);
    text("Welcome!", xpos, ypos);
    //text(introduct[i], xpos, ypos);
    textSize(20);
    text("This sketch provides you with challenges for Among Us.", xpos, ypos + 50);
    text("Challenges are based on your role as crewmate or imposter.", xpos, ypos + 100); 
    text("Click anywhere to start", xpos, ypos + 150); 
  }
  
  void introMouse() {
 // shift array values
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // add values to array
  x[0] = mouseX;
  y[0] = mouseY;
  // draw circles
  for (int i = 0; i < num; i++) {  // draw
    // float c = random(50, 250);
    // mouse tail 
    // processing.org/tutorials/arrays/
    // learningprocessing.com/examples/chp09/example-09-08-mouse-history
    fill(random(50, 250), random(50, 250), random(50, 250), random(0, 120));
    ellipse(x[i], y[i], i/2.0, i/2.0);
  }
}
}

  



//PImage shh; 

//class Intro {
  
//  Intro() {
  
//  }
  
//    void display() {
//image(shh, width/2, height/2);
//    }
  
  
//}
