
//Inspiration: http://processing.org/examples/mouse1d.html
//Creates a solar system. Move your cursor in circular motion to get the best effect


void setup() {
  size(500, 500);  
  colorMode(RGB, 256);
  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  background(0.0);

//Intialize varibles 
  float r1 = map(mouseX, 0, width, 0, height);
  float r2 = height-r1;
  float r3 = map(mouseY, 0, width, 0, height);
  float r4 = height-r3;
  float c = abs(mouseX - 500);
  
  
  fill(mouseX/2,0, mouseX/2);
  ellipse(width/2 + r1/2, height/2, r1, r1);
  
   fill(c,0,0);
  ellipse(mouseY, width/2, r3, r3);
  
   fill(mouseX/2,mouseX/2, 0);
  ellipse(mouseX, width/2, r4, r4);
  
  fill(0,0,c);
  ellipse(width/2 - r2/2, height/2, r2, r2);

}

