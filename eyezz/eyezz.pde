float wit;
float hi;
float a,b;

int width = 600;
int height = 400;

void
setup()
{
  size(width,height);
  wit = 100;
  hi = 200;
  a = 0;
  b = 0;
}
void
draw()
{
  wit = (wit + 5) % width;
  hi = (hi - 2) % height;
  a = (a+1) % 95;
  b = (b+1) % 73;
  colorMode(HSB,100);
  fill(b,100,a);
   strokeWeight(1);
  stroke(a,100,100);
  ellipse(300,200,wit,hi);

} // draw

