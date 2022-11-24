void quitButtonDraw() {
  fill(quitButtonColor);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); //Quit button
  fill(quitButtonCross);
  noStroke();
  quad(quitButtonX+3, quitButtonY, quitButtonX, quitButtonY+3, quitButtonX+quitButtonWidth-3, quitButtonY+quitButtonHeight, quitButtonX+quitButtonWidth, quitButtonY+quitButtonHeight-3);
  quad(quitButtonX+quitButtonWidth-3, quitButtonY, quitButtonX+quitButtonWidth, quitButtonY+3, quitButtonX+3, quitButtonY+quitButtonHeight, quitButtonX, quitButtonY+quitButtonHeight-3);
}
