/* 
A game where you need to hover your mouse over the circle for a 
duration of time. I couldn't quite get the timing to be percise so 
its kind of hit or miss. Enjoy!
*/


void setup()
{
  size(1200,700);
  frameRate(60);
  background(0);
}
 

void
draw()

{
////Mouse Stuff
int moX;
int moY;
moX = mouseX;
moY = mouseY;


////shape
float el_x;
float el_y;
float el_w;
float el_h;

////Ellipse parameters
 el_x = random(0, 500);
 el_y = random(0, 500);
 el_w = 50;
 el_h = 50;
 
 ////create ellipse every secound
 if(frameCount%60 == 0)
 {
    fill(random (0, 255), random(0, 250), random(0, 250));
  ellipse(el_x, el_y, el_w, el_h);
 }
  

///Blank entire canvas right before the next circle is drawn. 
if(frameCount%49 == 0)
  {
    fill(0);
    stroke(0);
  rect(0, 0, 1000, 1000);
  }
  

////If mouse are within ellipse, pronounce winner. 
  if( moY > (el_y - (el_h / 2)) &&
    moY < (el_y + (el_h / 2)) &&
    moX > (el_x - (el_w /2)) &&
    moX < (el_x + (el_w /2)))
    {
      noLoop();
      textSize(72);
      fill(0, 102, 153);
       text("Winner!", 500, 350);
    }


}

    
