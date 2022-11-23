//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColor, yellow, purple;
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
  yellow = color(255, 255, 0);
  purple = color(132.5, 0, 255);
} //End setup
//
void draw() {
  if (noNowReallyStart==true) {
    background(0); //Night Mode not considered yet
    //
    //Logical Rectangle
    println("X-Value", quitButtonX, mouseX, quitButtonX+quitButtonWidth);
    println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight);
      if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColor = yellow;
  } else {
    quitButtonColor = purple;
  }
    fill(quitButtonColor);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); //Quit button
    fill(color(255, 255, 255));
    quad(quitButtonX+3, quitButtonY, quitButtonX, quitButtonY+3, quitButtonX+quitButtonWidth-3, quitButtonY+quitButtonHeight, quitButtonX+quitButtonWidth, quitButtonY+quitButtonHeight-3);
    quad(quitButtonX+quitButtonWidth-3, quitButtonY, quitButtonX+quitButtonWidth, quitButtonY+3, quitButtonX+3, quitButtonY+quitButtonHeight, quitButtonX, quitButtonY+quitButtonHeight-3);
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
  if (noNowReallyStart==true && mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
} //End mousePressed
//
//End Main Program
