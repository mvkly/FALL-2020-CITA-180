// problem 4
// draw a smiley face, and include an arc for the mouth.

// size does not matter
size(400, 400);

// HEAD 
// fill it yellow
fill(#FFF64B);
// change strokeweight
//strokeWeight(2);
// make the head
ellipse(width/2, height/2, width/2, width/2);

// EYES, fill black
fill(0);
ellipse(width - 250, height - 230, width/10, width/10);
ellipse(width - 150, height - 230, width/10, width/10);

// MOUTH
// take away fill to leave shape only
// leave stroke as black
// use arc for mouth
noFill();
// change stroke weight
// (I know you said to not do anything extra, but
// without the strokeweight it does not look similar to the illustration
strokeWeight(5);
arc(200, 220, 130, 100, 0, PI ); 
// save as Smile
