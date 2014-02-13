//This program makes an ellipse bounce 
float xpos1 = 250;
float xpos2 = 123;
float xpos3 = 50;
float xpos4 = 27;

float ypos1 = 50;
float ypos2 = 278;
float ypos3 = 379;
float ypos4 = 572;

float speed1 = 0;
float speed2 = 0;
float speed3 = 0;
float speed4 = 0;

float gravity = 0.98;
float bounce = -1;

void setup()
{
  size (400, 800);
}
void draw()
{
  background (255, 0, 127);
  //Ball one
  fill(0, 255, 127);
  stroke(0);
  ellipse(xpos1, ypos1, 50, 50);
  //Ball two
  fill(255, 127, 0);
  stroke(0);
  ellipse(xpos2, ypos2, 30, 100);
  //Ball three
  fill(255, 153, 51);
  stroke(0);
  ellipse(xpos3, ypos3, 72, 23);
  //Ball four
  fill(137, 76, 213);
  stroke(0);
  ellipse(xpos4, ypos4, 123, 98);
  
  //Ball one
  speed1 = speed1 + gravity;
  ypos1 = speed1 + ypos1;
  
  //Ball two
  speed2 = speed2 + gravity;
  ypos2 = speed1 + ypos2;
  
  //Ball three
  speed3 = speed3 + gravity;
  xpos3 = speed3 + xpos3;
  
  //Ball four
  speed4 = speed4 + gravity;
  xpos4 = speed4 + xpos4;
  
  if (ypos1 > height - 25)
  {
    speed1 = speed1 * bounce;
  }
  if (ypos2 > height - 50)
  {
    speed2 = speed2 * bounce;
  }
  if (xpos3 > width - 36)
  {
    speed3 = speed2 * bounce;
  }
  if (xpos4 > width - 70)
  {
    speed4 = speed4 * bounce;
  }
}
  
  

