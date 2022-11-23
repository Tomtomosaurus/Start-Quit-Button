//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() {
  size (400, 300);
  //fullscreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population
  quitButtonX = appWidth/4;
  quitButtonY = appHeight/4;
  quitButtonWidth = appWidth/2;
  quitButtonHeight = appHeight/2;
} //End setup
//
void draw() {
  if (noNowReallyStart==true) {
    background(0); //Night Mode not considered yet
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); //Quit button 
  }
} //End draw
//
void keyPressed() {
  if (key==' ' && start==true) noNowReallyStart = true;
  //
  //Prototype Keyboard Quit Button OR Shortcut
  if (key=='Q' || key=='q') exit();
  if (keyCode == ESC) exit();
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
