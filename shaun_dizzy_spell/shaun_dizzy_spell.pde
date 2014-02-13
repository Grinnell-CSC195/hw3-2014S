float diameter;
float angle = 0;
int i = 0;
int j = 0;
int colorNum = 0;
int k =500;
void setup(){
  size(500,500);
  diameter = height - 400;
 
}
void draw (){
      //chnge fill color
     fill(i %255, 90 * (sin (angle)), j % 2);
     //chnge back color
     background ( (colorNum + 28) % 255, 70 *(sin (angle)), 0);
    float d1 = 10 + (sin(angle) * diameter/2) + diameter/2;

    ellipse (i,d1, d1, d1);
    ellipse (i+100,(i % height/2) +i, d1, d1);
    ellipse (i+100,0, d1, d1);
    ellipse (k-100,(i % height/2) +i, d1, d1);
    angle += 0.09;
    j= (j +1)%(height);
    i = (i +1)%(width);

}

