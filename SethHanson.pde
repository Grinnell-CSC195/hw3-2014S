int width = 800 ;
int height = 800 ;

float c = 0 ;
float d = 0 ;

int centerx = width / 2 ;
int centery = height / 2 ;

  int top = height / 4 ;
  int bottom = height - top ;
  int middle = ((top + bottom) / 2) ;
  int left = width / 5 ;
  int right = width - left ;
  int leftpiece = left + ((right - left) / 5) ;
  int rightpiece = right - ((right - left) / 5) ;
  
  int vert1x = leftpiece ;
  int vert1y = top ;
  int vert2x = rightpiece ;
  int vert2y = top ;
  int vert3x = right ;
  int vert3y = middle ;
  int vert4x = rightpiece ;
  int vert4y = bottom ;
  int vert5x = leftpiece ;
  int vert5y = bottom ;
  int vert6x = left ;
  int vert6y = middle ;

void
setup()
{
  size(width, height); 
  background(40, 40, 40) ;
  stroke(250, 250, 250) ;
  
  line( vert1x, vert1y, vert2x, vert2y) ;
  line( vert2x, vert2y, vert3x, vert3y) ;
  line( vert3x, vert3y, vert4x, vert4y) ;
  line( vert4x, vert4y, vert5x, vert5y) ;
  line( vert5x, vert5y, vert6x, vert6y) ;
  line( vert6x, vert6y, vert1x, vert1y) ;
  
  
}

void
draw()
{
  c = (c + 5) % 100 ;
  d = (d + 5) % 100 ;
  
  if (mousePressed && (mouseButton == LEFT)) {
    stroke( (100 + ((mouseX - centerx)*c)), (100 + ((mouseY - centery)*d)), 100) ;
    line( vert1x, vert1y, mouseX, mouseY) ;
    line( vert2x, vert2y, mouseX, mouseY) ;
    line( vert3x, vert3y, mouseX, mouseY) ;
    line( vert4x, vert4y, mouseX, mouseY) ;
    line( vert5x, vert5y, mouseX, mouseY) ;
    line( vert6x, vert6y, mouseX, mouseY) ;
    
  }
  else if (mousePressed && (mouseButton == RIGHT)) {
    stroke( (200 + ((mouseX - centerx)*c)), (200 + ((mouseY - centery)*d)), 200) ;
    line( vert1x, vert1y, mouseX, mouseY) ;
    line( vert2x, vert2y, mouseX, mouseY) ;
    line( vert3x, vert3y, mouseX, mouseY) ;
    line( vert4x, vert4y, mouseX, mouseY) ;
    line( vert5x, vert5y, mouseX, mouseY) ;
    line( vert6x, vert6y, mouseX, mouseY) ;
    
    
  }
  else if (keyPressed) {
    background(40, 40, 40) ;
    stroke(250, 250, 250) ;
  
    line( vert1x, vert1y, vert2x, vert2y) ;
    line( vert2x, vert2y, vert3x, vert3y) ;
    line( vert3x, vert3y, vert4x, vert4y) ;
    line( vert4x, vert4y, vert5x, vert5y) ;
    line( vert5x, vert5y, vert6x, vert6y) ;
    line( vert6x, vert6y, vert1x, vert1y) ;
  }
  else {
  stroke( (100 + ((mouseX - centerx)*c)), (100 + ((mouseY - centery)*d)), 100) ;
  }
  
  stroke(250, 250, 250) ;
  line( vert1x, vert1y, vert2x, vert2y) ;
  line( vert2x, vert2y, vert3x, vert3y) ;
  line( vert3x, vert3y, vert4x, vert4y) ;
  line( vert4x, vert4y, vert5x, vert5y) ;
  line( vert5x, vert5y, vert6x, vert6y) ;
  line( vert6x, vert6y, vert1x, vert1y) ;
  
  
  
} 
