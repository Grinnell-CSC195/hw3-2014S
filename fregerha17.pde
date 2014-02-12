int width = 500;
int height = 500;

void
setup()
{
  size(width,height);

}
void draw() {

background (40, 80, 40); 
  
strokeWeight(2);
beginShape();
vertex(100, 100);
bezierVertex(80, 20, 35, 75, 30, 150);
bezierVertex(90, 70, 60, 50, 40, 30);
bezierVertex(50, 80, 200, 25, 100, 20);
bezierVertex (100, 120, 130, 140, 150, 160);
endShape();

strokeWeight(4);
beginShape();
vertex(200, 200);
bezierVertex(300, 35, 90, 125, 150, 55);
bezierVertex(95, 200, 400, 40, 200, 30);
endShape();

strokeWeight(10);
beginShape();
vertex (500, 500);
bezierVertex(400, 90, 0, 400, 400, 60);
endShape();

noFill();
strokeWeight(2);
bezier(100, 20, 10, 10, 100, 100, 20, 500);
stroke(204, 200, 120);

for (int x = 0; x < 400; x++)
{
  float y = randomGaussian() * 10000;
triangle (x, y, 50, y, 10, 10); 

}
}


