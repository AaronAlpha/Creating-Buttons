//Global Variables

void setup() {
  size(500, 500);
  
};


void draw() {
  rect(width/4, height/4, width*3/4, height*3/4);
  
};


void keyPressed() {
  
  
  if (key == 'q' || key == 'Q') exit(); //NOTE: the program is STILL running after quit, but the canvas is gone
  
  
};


void mousePressed() {
  
};
//End MAIN program
