// Monica Ly 
// Filmstrip class assignment 

// set total number of images
// learningprocessing.com/examples/chp15/example-15-03-ImageArray1
// 5 images taken from own camera
int maxImages = 5; 
 int imageIndex = 0;

// declare array of images
PImage[] images = new PImage[maxImages];

void setup() {
  // moorec.people.cofc.edu/gddm_filmstrip.htm
  // your Processing window will be a little over 1,000 width
  size(1500, 300);
  
  // -- IMAGES --
  // max WIDTH of img is 200px 
  // load images onto array 
  // put jpg files in data folder
  // go to sketch > add file > add photo(s)
  
  // create for loop that will add each photo to the list of images 
  // start integer at 0, increase it to account for each image
  for (int i = 0; i < images.length; i ++) {
    // [i] changes, for each image named kai, add increasing number to get all
    images[i] = loadImage("kai" + i + ".jpg");
  }
}

void draw() {
// instruction message
// CLICK AND HOLD FOR PURPLE FILMSTRIP

 // if mouseclick
 // change to match mostly monochromatic look
 // -- PURPLE FILM -- 
 if (mousePressed && (mouseButton == LEFT)) {
 background(#4B0740);
 }
 
 else { 
 background(0); }
 
 // frameRate(1.5);
 //float timer1 = 0;
 //float timer2 = 0;
 //float delay1 = 1000/60f; 
 //float delay2 = 1000/1000f; 
 
 // -- IMAGES --
 //  for (int i = 0; i < images.length; i++) {
 // tint(255,(frameCount + i*20) % 255);
 // int i = 0;
 // frameCount % 100;
 frameRate(5);
   int y = height/6;
   // learningprocessing.com/exercises/chp15/exercise-15-04-multiple-image-tints
    for (int i = 0; i < images.length; i ++) {
      // tint(255,(frameCount + i*20) % 255);
      for (int x = width/30; x < width; x += width/5) {
      // for (int imageIndex = 0; imageIndex < images.length; imageIndex += 1 % images.length) {
      // create background rectangles - never mind
      // fill(255); 
      // rect(x - 50, y, 250, 100);
      
      // if(mouseX > 52 && mouseX < 247 && mouseY < 250 && mouseY > 51) {
        // if LEFT mouse button, then tint
        // processing.org/reference/mousePressed.html
      if (mousePressed && (mouseButton == LEFT)) {
      tint(random(150, 255), 0, random(150, 255), 255);
      }
      else {
        // take away tint
        // processing.org/reference/noTint_.html
        noTint(); }
      image(images[imageIndex], x, y);
      // learningprocessing.com/examples/chp15/example-15-04-ImageArray2
      // make different pictures show up 
       imageIndex = (imageIndex + 1) % images.length;
       }
    }
    // create different framerate for picture animation
    // learn.mansteri.com/p5-tips-and-tricks/processing-tips-tricks-framecount-and-the-modulo-operator/
    if (frameCount % 10 == 2) {
    imageIndex = (imageIndex + 1) % images.length; 
     
    }
    lights();
    
    // text only shows up if user is not clicking
    if (mousePressed == false && (mouseButton != LEFT)) {
    textSize(16);
    text("Click and hold left mouse button", width/2 - 120, 45);
    }
    else { 
     textSize(16);
     fill(#FFE8FB);  // really light pink
     text("Kai's Filmstrip!", width/2 - 50, 45);
    }
 } // end of draw
 
 //// check for values
 //void mouseClicked() {
 // println(mouseX, mouseY);
 //}
  
