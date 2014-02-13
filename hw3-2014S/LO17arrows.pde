PShape star;
  int a1 = 0;
  int a2 = 50;
  int b1 = 14;
  int b2 = 20;
  int c1 =  23;
  int c2 =  7;
  int d1 =29;
  int d2 = 40;
  int e = 25;
  int gap = 5;
void setup() {
  size(400, 400);
}



void draw() {
  background(400);
  fill(102);
  stroke(255);
  strokeWeight(2);
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
  beginShape();
  vertex(a1, b1);
  vertex(a2, b2);
  vertex(c1, d1);
  vertex(c2, d2);
  endShape(CLOSE); 
  a1+=5;
  a2+=5;
  b1+=5;
  b2+=5;
  c1+=5;
  c2+=5;
  d1+=5;
  d2+=5;
    }
  }}
  

