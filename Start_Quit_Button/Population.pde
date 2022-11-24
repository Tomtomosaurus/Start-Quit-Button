void population() {
  float centerX = appWidth/2; //Point
  float centerY = appHeight/2; //Point
  quitButtonX = centerX - appWidth/4; //just get rid of "centerX - " and it will be the same thing
  quitButtonY = centerY - appHeight/4; //just get rid of "centerY - " and it will also be the same thing
  quitButtonWidth = appWidth/2; //Point, not line, thus we use a formula (though the point variable would work. This is just for clarity)
  quitButtonHeight = appHeight/2; //Point, not line, thus we use a formula (though the point variable would work. This is just for clarity)
  yellow = color(255, 255, 0);
  purple = color(132.5, 0, 255);
  red = color(255, 0, 0);
  white = color(255, 255, 255);
} //end population
