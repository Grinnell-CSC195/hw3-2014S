float foo;
float bar;
float c;

int width = 600;
int height = 600;

void
setup()
{
  size(width,height);
 
}
void
draw()
{
  
  background(255, 204, 0);
  strokeWeight(3);
  
  int fivesec = (5 * second());
 /*hours*/
 for (int h = -480; h < height; h = h + 120)
 {fill(0, 255 - (8.125 * hour()), 50);
 ellipse(200, h + (20 * hour()), 100, 100);}
 
 for (int z = -462; z < height; z = z + 120)
 {textSize(48);
   fill(200);
 text(hour(), 172, z + (20 * hour()));}
 
 /*minutes*/
 for (int h = -900; h < height; h = h +95)
 {fill(255 - (3.42 * minute()), 0, 50);
 ellipse(330, h + (15 * minute()), 75, 75);}
 
 for (int z = -890; z < height; z = z + 95)
 {textSize(30);
 fill(200);
 text(minute(), 310, z + (15 * minute()));}
 
 /*seconds*/ 
  for (int h = -300; h < height; h = h+70) 
  {fill(30, 20, 255 - (3.42 * second()));
  ellipse(430, h + fivesec,50,50);}

  for (int z = -292; z < height; z = z + 70)
  {textSize(20);
  fill(200);
  text(second(), 419, z + fivesec);}


  for (int i = 0; i < (height + 300); i = i+5) 
  {line(0, i, 50, i);}
  
  for (int j = 0; j < (height + 300); j = j+10)
  {line(40, j, 120, j);}
  
  for (int k = 0; k < (height + 300); k = k+5)
  {line(550, k, width, k);}
  
  for (int l = 0; l < (height + 300); l = l+10)
  {line(480, l, (width - 40), l);}
    

} // draw
