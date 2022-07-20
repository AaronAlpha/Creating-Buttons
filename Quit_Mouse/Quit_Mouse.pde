//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color gold = #FCF630, purple = #CC30FC, resetButtonColor = #FFFFFF, buttonFill; //Not nightMode friendly colors

void setup() {
  size(500, 500);

  int centerX = width/2;
  int centerY = height/2;
  int centeringButtonWidth  = width*1/4;
  int centeringButtonHeight = height*1/4;

  //Population
  quitButtonX = centerX - centeringButtonWidth;
  quitButtonY = centerY - centeringButtonHeight;
  quitButtonWidth = width*1/2;
  quitButtonHeight = height*1/2;
};


void draw() {
  //rect(width/4, height/4, width/2, height*1/2);

  //to have a Hover-over effect, starts with:
  if (mouseX >= quitButtonX  && mouseX < quitButtonX+quitButtonWidth && mouseY > quitButtonY && mouseY < quitButtonY+quitButtonHeight) {
    buttonFill = gold;
  } else {
    buttonFill = purple;
  };//End Hover-over

  fill(buttonFill); //2 colors to start, remember that nightMode adds CHOICE(and increase max marks)
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColor);


  //println("X-value", quitButtonX, "\t", mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-value", quitButtonY, "\t", mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
};


void keyPressed() {


  if (key == 'q' || key == 'Q') exit(); //NOTE: the program is STILL running after quit, but the canvas is gone
};


void mousePressed() {

  if (mouseX >= quitButtonX  && mouseX < quitButtonX+quitButtonWidth && mouseY > quitButtonY && mouseY < quitButtonY+quitButtonHeight) exit();
};
//End MAIN program
