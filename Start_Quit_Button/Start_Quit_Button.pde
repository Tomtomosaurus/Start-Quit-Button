//Global Variables
Boolean start=false, noNowReallyStart=false;
//
void setup() {
} //end setup
//
void draw() {
  if (noNowReallyStart==true) background(0); //Night Mode not considered yet
} //End raw
//
void keyPressed() {
  if (key==' ' && start==true) noNowReallyStart = true;
  //
  //Prototype Keyboard Quit Button OR Shortcut
  if () exit();
  if () exit();
} //End keyPressed
//
void mousePressed() {
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press the Space Bar");
} //End mousePressed
//
//End Main Program
