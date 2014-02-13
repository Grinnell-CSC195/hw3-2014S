
color bg;
int wid=500;
int len=500;
int max_dots=100;
int dot_count = 0;
Dot test = new Dot(0,0);
Dot test2 = new Dot(50,50);
Dot[] dots = new Dot[max_dots];


void setup(){
  size(wid,len);
  bg=color(200, 255, 200);
}
void draw(){
  background(bg);
  if (mousePressed && (mouseButton == LEFT)) {
    if (dot_count < max_dots){
      dots[dot_count]=new Dot(round (random(wid)),round (random(len)));
      dot_count++;
    } 
  }
  if (dot_count>0){
  for(int i =0; i<dot_count;i++){
    println(i);
    
    dots[i].move();
    ellipse(dots[i].x,dots[i].y,dots[i].size_x,dots[i].size_y);

  }
  }
}

class Dot{
  float x;
  float y;
  float delta_x = random(-4,4);
  float delta_y = random(-4,4);
  float size_x = random(1, 10);
  float size_y = random(1,10);
  
  Dot(float init_x, float init_y){ 
    x=init_x;
    y=init_y;
  }
  void move(){
    x+=delta_x;
    y+=delta_y;
    if(x>=wid || x<= 0){
      delta_x*=-1;
    }
    if(y>=len || y<=0){
      delta_y*=-1;
    }
  }
}
  
    
  
