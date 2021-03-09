
// challenges

/* 
Stand on a vent for x seconds for()
Follow the same person for()
Follow a different person for()
Fake the same task x times for()
Leave mic unmuted (voice activity) for()
Vote for yourself for()
Vote the same person for()
No talking whatsoever for()
Stay in the same room for x amount of time
Accuse someone() without any evidence to back it up/ give bad evidence for()
No challenge
*/ 

Challenge challenge;
StringList crewList; 

// === CHALLENGES ===
class Challenge {

  Challenge() {
  }
  

  void display() {
   background(0);
   rectMode(CENTER);
   fill(230);
   //rect(width/2, height/2, 150, 50);
  
  // processing.org/reference/StringList.html

  //void crewmem() {
  ////StringList crewList; 
  //StringList[] crewList;
  
  // === LIST OF CHALLENGES ===
  crewList = new StringList();
  crewList.append("Stand on a vent");
  crewList.append("Follow the same person");
  crewList.append("Fake the same task");
  crewList.append("Leave mic unmuted with voice activity enabled");
  crewList.append("Vote for yourself");
  crewList.append("No talking whatsoever");
  crewList.append("Stay in the same room");
  crewList.append("Accuse someone with bad evidence");
  crewList.append("No challenge");
  fill(255);
    
  //if (4 > clicks > 3) 
  //int i = 0; // % crewList.size();
  int index = int(random(crewList.size())); 
  
  //int rand = int(random(5, crewList.size()));
  //int rand = int(random(5, crewList.size()));
  if (clicks == 2) {
  text("Click anywhere to shuffle", width/2, height/2 - 20);
  }
  
  if (clicks == 3) {
  // processing.org/reference/StringList_shuffle_.html
  crewList.shuffle();
 
  //crewList.sort();
  //println("Challenge:", crewList.get(rand));
   String task = crewList.get(index);
   //  text(task, width/2, height/2 + 50);
   text(task, width/2, height/2 + 50);
 
   println("Your challenge:", task);
   text("Click anywhere to stop", width/2, height/2 - 20);
  }
  
 //text(crewList.get(rand), width/2, height/2 + 50);
  //if (clicks == 4) {
    
  //}
  //println("Challenge:", crewList.get(i));
  

  if (clicks == 4) {
  text("Check console for your challenge!", width/2, height/2); 
  text("Use the most recent challenge.", width/2, height/2 + 50);
  }
  //String task = crewList.get(i);
  // text(task, width/2, height/2 + 50);
  //String task = crewList.get(i);
  //text(task, width/2, height/2 + 50);
  
  }
  }
  
  ////// pick a random index 
  //void mouseReleased() {
  //// forum.processing.org/one/topic/how-to-pick-random-value-from-array.html
  //int rand = int(random(crewList.size()));  // processing.org/reference/StringList_size_.html
  //println("Challenge:", crewList.get(rand));
  
  
  
  
  
  
