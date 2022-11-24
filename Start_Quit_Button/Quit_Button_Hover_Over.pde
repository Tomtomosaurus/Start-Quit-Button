void quitButtonHoverOver() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColor = yellow;
    quitButtonCross = red;
  } else {
    quitButtonColor = purple;
    quitButtonCross = white;
  }
} //end quitButtonHoverOver
