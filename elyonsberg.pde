float r;
float g;
float b;
int height = 300;
int width = 300;

void setup()
{
  size(width, height);
  background(220, 255, 220);
}


void draw()
{
  if (mouseX >= 295)
{  fill(200,50,50);
  rect(0, 0, width, 200);
fill(255,0,0);
rect(0,200,width,height);}
else 
  fill(0, 0, 0);
  rect(0, 0, width, 200);
  r = ((r + 1) % 255);
  g = ((g + 2) % 255);
  b = ((b + 3) % 255);
  stroke(r, 0, 0);
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  stroke(0,g,0);
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  stroke(0,0,b);
    point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  point(random(300), random(200));
  stroke(mouseX, 0, mouseY);
  fill(mouseX, 0, mouseY);
  ellipse(mouseX, (mouseX * .55), 65, 65);
  strokeWeight(1);
line(mouseX, (mouseX * .55), mouseX-60, (mouseX * .55)-60);
line(mouseX, (mouseX * .55), mouseX-50, (mouseX * .55)-60);
line(mouseX, (mouseX * .55), mouseX-75, (mouseX * .55)-60);
line(mouseX, (mouseX * .55), mouseX-90, (mouseX * .55)-20);
line(mouseX, (mouseX * .55), mouseX-115, (mouseX * .55)-55);
fill(220,255,220);
rect(0,200,width,height);

}

