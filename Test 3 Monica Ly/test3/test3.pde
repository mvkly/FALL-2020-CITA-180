
// Monica Ly
// Test 3 -- Motivational Poster

// === SETUP ===
// keep poster size under 900 px
// maybe use loadFont to package fonts
void setup() {
size(600, 600);

// IllegalArgumentException: loadFont() is for .vlw files, try createFont()
// f = loadFont("UDDigiKyokashoNP-R-48.vlw");
f = loadFont("YuMincho-Regular-48.vlw");
// f = createFont("UDDigiKyokashoNK-R-48.vlw", 16);
winter = createFont("Winter.otf", 16);
summer = createFont("Summertime.ttf", 48);
x = width;  // init to go offscreen
// printArray(fontList); // processing.org/reference/PFont_list_.html

winter_pic = loadImage("winter.jpg");
summer_pic = loadImage("summer.jpg");
}

// === DRAW ===
void draw() {
 background(0); 
 fill(255);
 image(winter_pic, 0, 0, width, 220);
 image(summer_pic, 0, 350, width, 250);
winter_summer();
quote();
scrolling();  

}
