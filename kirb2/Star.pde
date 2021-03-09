
void moveStar() {
  if(w<=0);
  w += 10;
  if(w >= width) {
  w = width;
     }
}

void constrainStar() {
  if (w >= width) {
    w = width/2;
  }
}


// star has 5 vertices
void star() {
   if (mousePressed == true) {
  noStroke();
fill(#FFFA64);
beginShape();
// top vertex
//vertex(width/2, 0);
//vertex(width - 100, height/2);
vertex(w/2 - 100, h/2 - 100);
vertex(w/2, 0);
vertex(w/2 + 100, h/2 - 100);
// vertex(width/2 + 300, height/2 - 100);

vertex(w/2 + 300, h/2 - 100);
vertex(w/2 + 300, h/2 - 100);
vertex(w/2 + 150, h/2);

vertex(w/2 + 300, h/2 + 300);
//vertex(width/2, height/2 + 300);

vertex(w/2, h/2 + 100);
vertex(w/2 - 200, h/2 + 300);

vertex(w/2 - 100, h/2);
vertex(w/2 - 300, h/2 - 100);

// vertex(width/2 + 300, height/2 + 150);
// vertex(width/2 + 50, height/4);
//vertex(width + 100, height/2);
//vertex(width + 100, height - 100);
 // right
// vertex(width - 100, height - 100)
endShape();

// ----- with width and height instead ----
//beginShape();

////vertex(width/2 + 300, height/2 + 300);
////vertex(width/2 - 200, height/2 + 300);

//endShape();
   }
}



/* 

// star has 5 vertices
void star() {
  noStroke();
fill(#FFFA64);
beginShape();
// top vertex
//vertex(width/2, 0);
//vertex(width - 100, height/2);
vertex(width/2 - 100, height/2 - 100);
vertex(width/2, 0);
vertex(width/2 + 100, height/2 - 100);
// vertex(width/2 + 300, height/2 - 100);

vertex(width/2 + 300, height/2 - 100);
vertex(width/2 + 300, height/2 - 100);
vertex(width/2 + 150, height/2);

vertex(width/2 + 300, height/2 + 300);
//vertex(width/2, height/2 + 300);

vertex(width/2, height/2 + 100);
vertex(width/2 - 200, height/2 + 300);

vertex(width/2 - 100, height/2);
vertex(width/2 - 300, height/2 - 100);

// vertex(width/2 + 300, height/2 + 150);
// vertex(width/2 + 50, height/4);
//vertex(width + 100, height/2);
//vertex(width + 100, height - 100);
 // right
// vertex(width - 100, height - 100)
endShape();

//beginShape();

////vertex(width/2 + 300, height/2 + 300);
////vertex(width/2 - 200, height/2 + 300);

//endShape();
}
*/
