
butt circle1;
butt circle2;
butt circle3;
butt circle4;

void setup() {
  size(800,800);
  background(255, 0, 140);
  circle1 = new butt(color(230, 120, 20), 0, 0, 1, 2);
  circle2 = new butt(color(230, 120, 20), 100,0, 2, 5);
  circle3 = new butt(color(230, 120, 20), 200, 0, 3, 1);
  circle4 = new butt(color(230, 120, 20), 300, 0 , 4, 4);
}
void draw(){
  circle1.display();
  circle2.display();
  circle3.display();
  circle4.display();
  circle1.drive();
  circle2.drive();
  circle3.drive();
  circle4.drive();
}
class butt {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  
  butt(color tempc, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed) {
    c = tempc;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, ypos, xpos);
  }
  
  void drive() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if ((xpos > width) && (ypos > height)) {
      xpos = 0;
      ypos = 0;
    }
  }
}

