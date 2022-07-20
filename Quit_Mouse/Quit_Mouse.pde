//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;

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
  
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  println("X-value", quitButtonX, "\t", mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  
};


void keyPressed() {
  
  
  if (key == 'q' || key == 'Q') exit(); //NOTE: the program is STILL running after quit, but the canvas is gone
  
  
};


void mousePressed() {

  
};
//End MAIN program
