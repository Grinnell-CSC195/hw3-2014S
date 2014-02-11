float y;
float x;
int mouseclick;
float background = 0;
 
// The statements in the setup() function 
// run once when the program begins
void setup() {
  size(640, 360);  // Size should be the first statement
  stroke(255);     // Set stroke color to white
  noLoop();
  
  y = height * 0.5;
  x = width * 0.5;
}

// The statements in draw() are run until the 
// program is stopped. Each statement is run in 
// sequence and after the last line is read, the first 
// line is run again.
void draw() { 
  background(background);
  line(0, y, width, y);  
  line(x, 0, x, height);
  
  y = y - 1; 
  x = x - 1;
  if (y < 0) { 
    y = height; 
  } 
  else if (y == (height * .5)){
  }
  if (x < 0) { 
    x = width; 
  } 
  else if (x == (width * .5)){
  }
} 

void mousePressed() {
  mouseclick++;
  
  
  
  
if (mouseclick % 2 == 1){
 loop(); 
}
else noLoop();
}

void keyPressed() {
  int keyIndex;
  if (key == 'R' || key == 'r')
  {
    background=50;
    stroke(255);
  }
  else if (key == 'b' || key == 'B')
  {
    background= 100;
    stroke (0);
  }
  
  else if (key == 'w' || key == 'W')
  {
    background= 0;
    stroke (255);
  }
}
