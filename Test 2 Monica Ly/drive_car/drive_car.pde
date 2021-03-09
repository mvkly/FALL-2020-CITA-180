/* This one is a super simple rendition of car moving 
off of the screen to the right.
Start by creating variable(s) as necessary. */   

// Change the necessary constant number(s)   to variable(s) 
int x = 5;
int y = 180;

void setup() {
size(400, 250);    
}

void draw() {
background(#50A0F0); 
//The car   
stroke(0);   
fill(#087E6D);   
rect(x, y, 90, 35, 10,10,0,0);
// y stays constant
// change x to make it move, go off the screen
// DO NOT DO ANYTHING EXTRA. 
// JUST MAKE THE CAR GO OFF THE SCREEN. THAT’S IT.
// looks like it's going left
// so subtract to go closer to 0
x -= 5;
// drive_car
}
