
// ROLE
// are you crewmate or imposter?
// give options, left or right (click on corresponding one to indicate)

// crewmate color = #8DFFFD
// imposter color = #E9382C 
/* to get the colors, I went on Google, looked up the loading screens for crewmate/imposter
then, I went and copied and pasted the images onto paint,
used the color picker tool > edit colors > wrote down the RGB values >
went to colorcodehex.com/html-color-picker.html > entered in the values > received corresponding hex code 
imgur.com/a/YsQsQuG
*/
  // variables 
  // global variables
 String[] instruct = {  // create array of instructions, init in setup
   "Are you crewmate or imposter?",
   "Click on the side that corresponds to your role.",
 };
 
 //String[] role = { 
 // "Crewmate",
 // "Imposter",
 //};
 
 int index = 0; 
 float instructX; 
 PImage crew;  // init image
 PImage imposter;  // init image
 PImage kill;
 PImage use;
 
 class Role {
int tempWidth;
int tempHeight;
 
 Role() {
 }
 
 
void display() {
  
  // === Variables === 
 //int tempX;
 int tempWidth = (width - 330);
 int tempHeight = (height - 30);
 
 
  // === DECOR ===
 rectMode(CENTER);
 noStroke();
 
   // -- left border --
 fill(#8DFFFD);
 rect(0, 0, width, height * 2);
 
 // -- right border -- 
 fill(#E9382C);
 rect(width, 0, width, height * 2);
 

 // -- black inner rect -- 
 fill(0);
//  for (int x = width/4; x < width; tempX += 200) {
  //for (int tempX = width; tempX < width; tempX = tempX/4) {
 //rect((tempX/4), height/2, tempWidth, tempHeight);
 // rect((tempX/4 + tempX/2), height/2, tempWidth, tempHeight); 
  for (int tempX = width/4; tempX < width * 2; tempX += 300) {
  rect(tempX, height/2, tempWidth, tempHeight);
  rect(tempX, height/2, tempWidth, tempHeight);
  }
  
  // make words appear and color change for rectangle
  // whenever user hovers over
  if (mouseX < width/2) { // left, crewmate
    //fill(#F8B200);
    fill(#D69A03);
    rect(150, height/2, tempWidth, tempHeight);
    image(use, 50, 380);
    fill(255);
    text("I'm a crewmate!", 150, height - 200);
  }
  else {
  //if (mouseX > width/2) { // right, imposter
    fill(#4E0001);
    rect(450, height/2, tempWidth, tempHeight);
     image(kill, 350, 400);
    fill(255);
    text("I'm an imposter!", 450, height - 200);
    
  }

  
 // === ask - are you crewmate or imposter? ===
 // use scrolling text and provide instructions 
 // learningprocessing.com/examples/chp17/example-17-03-scrollingtext
 fill(255);
 textSize(30);
 text(instruct[index], instructX, 50);  // height is static
 instructX -= 2;  // decrement
 float w = textWidth(instruct[index]); 
 
 if (instructX < -w) {   // determine if instruct is off screen
   instructX = width;  // reset location
   index = (index + 1) % instruct.length; // display new string, index increase mod length
 }
 
 // left (crewmate) 
 // text for crewmate
 textAlign(CENTER);  // align text to center
  fill(#8DFFFD);
  text("Crewmate", width/4, height/5);
 // add in the image
 image(crew, 50, 150);
 
 // right (imposter)
 // text for imposter
 fill(#E9382C);
  text("Imposter", 450, height/5);
   // add in the image
 image(imposter, 350, 140);
 //for (int tempX = width/4; tempX < width * 2; tempX += 300)  // works but can't change crewmate to imposter for right side
 //  text("Crewmate", tempX, 100);
 //  if (posX > width/2) {
 //  text("Imposter", posX, 100);
 //  }
 
 //// === TRANSITION ===
 //// create transition
 //if (mousePressed == true && mouseX < width/2) {  // crewmate
 
 }
 
}
  
