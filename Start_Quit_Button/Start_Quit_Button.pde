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
  if (key==' ') noNowReallyStart = true;
} //End keyPressed
//
void mousePressed() {
  //
  //OS Level Start Button
  start = true;
} //End mousePressed
//
//End Main Program
