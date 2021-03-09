
// Monica Ly
// Project 2 -- Semester Project
// 12/8/20


// === SETUP ===
// around 500 px
void setup() {
  size(600, 600);  

  // === INTRO === 
  if (clicks < 1) {
    // background(0);  // take away background for a flash of light at startup
    // noStroke();
    // fill(0);
    // background(0);
    
    // stroke(255, random(250));
    //fill(255, random(50, 250));
    strokeWeight(5);
    int i = 0;
    while(i < 100) {
      xstar[i] = random(0, width);
      ystar[i] = random(0, height); 
      starspeed[i] = random(1, 3);
      i += 1;
  } }
  
  instructX = width;  // init instructions to appear offscreen
  // image from Google search
  // gamertweak.com/wp-content/uploads/2020/09/angel-devil-costume-among-us.jpg
  // edited the image to separate crewmate/imposter, resize to 200px, + for transparency using photopea.com
  crew = loadImage("Crewmate.png");  // load img
  imposter = loadImage("Imposter.png");  // load img
  kill = loadImage("kill.png"); 
  use = loadImage("use.png");
  //shh = loadImage("shh.png");
  
  intro = new Intro();
  role = new Role(); 
  challenge = new Challenge();
  //crewtransit = new CrewTransit();
  
  noStroke();

  }

// === DRAW ===
void draw() {
  
  // === INTRO === 
  if (clicks < 1) {
   stroke(255);
   // stroke(255, random(50, 200));
   strokeWeight(5);
   // funprogramming.org/22-Stars-blinking-at-night-fade-out-effect.html
   //ellipse(random(width), random(height), 3, 3);
   
   // intro
   intro.display();
   
   // mouse
   stroke(255, 100);
   strokeWeight(2);
   intro.introMouse();
  }
  
  // === CLICK COUNT VALUES ===
  if (clicks >= 1) {
  role.display();
  }
  
  if (clicks >= 2) {
    challenge.display();
  }
  
  cont();
}

// === MOUSEPRESSED === 
void mouseReleased() {
 if (mouseButton == LEFT) {  // lmb
 clicks += 1; 
 }
 else {  // rmb
  clicks -= 1; 
 }
 // println("Amount of clicks:", clicks);  // clicks seem to accumulate based on length of click
}
