void quote() {
  // -- motivational quote -- 
/*  In the depth of winter, 
I finally learned that within me 
there lay an invincible summer. 
-Albert Camus */
textAlign(CENTER);
int xpos = 300;
int ypos = 200;

// -- text -- 
 // -- winter font for winter --
fill(255);
textSize(30);
 text("In the depth of", xpos - 75, ypos - 60);


textFont(winter);
 text("winter", xpos + 95, ypos - 60);
 
  // -- winter font for winter -- 
 // text changes color once hovers over right
 if (mouseX > width/2 && mouseX <= width) {
  fill(#96B1FC); 
  textFont(winter);
 text("winter", xpos + 95, ypos - 60);
 }
 
 fill(255);
 textFont(f);
 textSize(30);
 text(",", xpos + 165, ypos - 60);
 text("I finally learned that within me", xpos, ypos + 100);
 text("there lay an invincible", xpos - 60, ypos + 250);
 
  // -- summer font for summer --
 fill(255);
 textFont(summer);
 text("summer.", xpos + 150, ypos + 250);
 
  // -- summer font for summer --
 // text changes color once mouse hovers over right side
 if(mouseX > width/2 && mouseX <= width) {
   fill(#FCEC96);
   textFont(summer);
    text("summer.", xpos + 150, ypos + 250);
 } 
 
 fill(255);
 textFont(f);
 textSize(30);
 text("-Albert Camus", xpos, ypos + 300);
 
 // processing.org/tutorials/text/
 //for (int i = 0; i < quote1.length(); i++) {
 //  textAlign(CENTER);
 // textSize(30);
 //  text(quote1.charAt(i), xpos, ypos); 
 // // textWidth() spaces the characters
 // xpos += textWidth(quote1.charAt(i));
 //}
  
}
