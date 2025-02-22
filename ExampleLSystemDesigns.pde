// ExampleLSystemDesigns - contains helper methods to create and 
// initialize an LSystem
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.



// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}



// TASK THREE, DESIGN 1: wreath design l-system
LSystem initDesignOne(){ 
// initialize turtle variables
  float moveDist = 20;
  float rotateAngle = 12;
  float scaleFactor = 0.2;
  
  // The intial axiom / input string
  String axiom = "+B+[F--B]F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "B[F+-F-F]FB[F+-F-F]FB[F+-F-F]F");
  rules.put('B', "[F+]++F-F[F+]++F-F[F+]++F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}



// TASK THREE, DESIGN 2: turning triangle design l-system
LSystem initDesignTwo(){
// initialize turtle variables
  float moveDist = 100;
  float rotateAngle = 120;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "[F+F+F]-B-B-B[F+F+F]-B-B-B");
  rules.put('B', "+B++B+");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}



// TASK THREE, DESIGN 3: tree design l-system
LSystem initDesignThree(){ //Tree design L System
// initialize turtle variables
  float moveDist = 130;
  float rotateAngle = 25;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF-[-F+F-L]+[+F+FL][F-FL]");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
