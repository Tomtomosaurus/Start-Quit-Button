//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColor, quitButtonCross, yellow, purple, red, white;
//
void setup() {
  size (400, 300);
  //fullscreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  population();
  //
} //End setup
//
void draw() {
  if (noNowReallyStart==true) {
    programDraw();
  }
  debuggingLogicalRect();
} //End draw
//
void keyPressed() {
  keyboardShortcuts();
} //End keyPressed
//
void mousePressed() {
  //
  //OS Level Start Button
  osStartButton();
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if (noNowReallyStart==true && mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
} //End mousePressed
//
//End Main Program
