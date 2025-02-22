
// EXTRA CREDIT, TASK 1: randomized angle and distance tree design l-system
LSystem initProbDesignOne(){ //Tree design L System probabilistically
// initialize turtle variables
  float moveDist = random(50, 100);
  float rotateAngle = random(10, 35);
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF-[-F+F-L]+[+F+FL][F-FC]");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}



// EXTRA CREDIT, TASK 2: randomized angle and distance with probabilistic rules tree design l-system
LSystem initProbDesignTwo(){ //Tree design L System probabilistically
// initialize turtle variables
  float moveDist = random(50, 100);
  float rotateAngle = random(20, 25);
  float scaleFactor = 1;
  int x ;
  
  // The intial axiom / input string
  String axiom = "F";
  String[] fString = {"FF-[-F+F-L]+[+F+FL][F-FC]", "FF+[+FC]-F-[FL]", "FF+[+F-F+L]-[-F-FC][F+FL]"};
  float probFNum = random(0,1);

//set up weighted probabilities for F string array
  if (probFNum < 0.5) {  
        x=0;  
    } else if (probFNum >= 0.5 && probFNum <= 0.8) {  
        x=1;  
    } else {  
        x=2;
    }
  
  //set up random probabilities for L string array
  String[] lString = {"L", "C"};
  int probL = int(random(0, lString.length));
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', fString[x]);
  rules.put('L', lString[probL]);
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
