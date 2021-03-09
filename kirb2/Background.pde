

void drawBackground() {
 background(#41980a);
 // create a path for kirby to walk down (top to bottom)
 stroke(#B79078);
 fill(#B79078);
 line(300, 0, 100, height);
 line(500, 0, 700, height);
 // quad(300, 0, 100, 800, 500, 0, 700, 800);
 beginShape();
 vertex(300, 0);
 vertex(500, 0);
 vertex(700, height);
 vertex(100, height);
 endShape();
 
 //// create grass
 //noStroke();
 //fill(#41980a);
 
 //for(x = 0; x < height; ) {
 //  triangle(x, height, 100, height, 50, 600); 
 //  x += 50;
 // }
}

void spaceBackground() {
 // slow it down
 frameRate(10);
 background(0);
 // colorful stars
 stars();
 stars();
 stars();
}

void stars() {
  // create stars
  // funprogramming.org/22-Stars-blinking-at-night-fade-out-effect.html
  fill(0, 50);
  rect(400, 400, width, height);
  fill(255);
  ellipse(random(width), random(height), 3, 3);
  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), 6, 6);
  ellipse(random(width), random(height), 10, 10);
}
