//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() {
  size (400, 300);
  //fullscreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population
  float centerX = appWidth/2; //Point
  float centerY = appHeight/2; //Point
  quitButtonX = centerX - appWidth/4; //just get rid of "centerX - " and it will be the same thing
  quitButtonY = centerY - appHeight/4; //just get rid of "centerY - " and it will also be the same thing
  quitButtonWidth = appWidth/2; //Point, not line, thus we use a formula (though the point variable would work. This is just for clarity)
  quitButtonHeight = appHeight/2; //Point, not line, thus we use a formula (though the point variable would work. This is just for clarity)
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
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if() exit();
} //End mousePressed
//
//End Main Program
