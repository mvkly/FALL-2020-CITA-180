//The sticks have already been created. 
// copied the starting code
// background color does not matter
// No need for dynamic mode unless you want to

size(600, 300);  
stroke(0); 
background(0); 
int y = 100;

for (int x = 30; x < width; x = x+60) 
{   
stroke(#E3C36C); 
//beige for stick   
strokeWeight(10);   
line(x, 200, x, 120); 

 
 // popsicles
 // ROUND TOPS, SQUARE BOTTOMS -- POPSICLES
 // change rectmode
 // change the stroke to a diff color from what I am seeing on the photo?
 fill(0);
 stroke(1);
 strokeWeight(1);
 rectMode(CENTER);
 // Use random() to generate random colors of any kind you wish
 // I don't want it getting too dark (to where it won't be seen in background,
 // so I am setting a minimum value for random) 
 fill(random(50, 255), 0, random(50, 255));
 rect(x, y+30, 30, 50, 30, 30, 0, 0);
 // Loopy_pops
} 
