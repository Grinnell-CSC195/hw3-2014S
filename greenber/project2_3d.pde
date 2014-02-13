//An attempt at making project2, an attempt at making the game of life,  3d.  It renders
//but not what I expected. 

int w = 100;
int h = 100;
int squarewid = 25; 
int cols =  w/squarewid;
int rows = h/squarewid;
int depth = h/squarewid;
int[][][] people; 
int gen = 0; 
int xaxis;
int yaxis;
int zaxis; 

void setup(){
size(w, h, P3D);
people = new int[cols][rows][depth]; 
init(cols, rows, depth); 
}

void draw(){
  dead();
  for(int i= 1; i < cols ;i++)
  {
    for (int j = 1; j < rows; j++)
    {
      for (int k = 1; k < depth; k++)
      {
        if (people[i][j][k] == 1)
        {
      translate(xaxis, yaxis, zaxis); 
       rotateY(0.5);
       stroke(255, 0, 255);
       fill(255);
       box(squarewid);
       zaxis += squarewid; 
        }else
        {
        translate(xaxis, yaxis, zaxis); 
        stroke(255, 0, 255);
       rotateY(0.5);
       fill(0);
       box(squarewid);
       zaxis += squarewid;
        }
      }//most inner for 
     yaxis =+ squarewid; 
     zaxis = 0; 
    }//inner for
    yaxis = 0;
    zaxis = 0; 
    xaxis =+ squarewid; 
  }//outer for 
    
}


void init(int wid, int hei, int dep){
 for (int i = 0; i < wid; i++)
 {
   for (int j = 0; j < hei; j++)
   {
     for (int k = 0; k < dep; k++)
     {
    people[i][j][k] = 0;
   }
 }
}
  
}//init


void add(int[] peeps){
  int len = peeps.length;
  for (int i = 0; i<len; i =+3)
  {
    people[i][i+1][i+2] = 1; 
  }
    
}//add

void dead(){
  int sum = 0; 
  for(int i= 1; i < cols - 1 ;i++)
  {
    for (int j = 1; j < rows - 1; j++)
    {
      for (int k = 1; k < depth -1; k++)
      {
      sum = people[i + 1][j][k] 
            + people[i][j+1][k] + people[i][j][k+1] 
            + people[i-1][j][k] +  people[i][j-1][k] 
            +  people[i][j][k-1];
      if (sum < 1)
      {
        people[i][j][k] = 0;
      }else if (sum < 3){
        people[i+1][j][k] = 1; 
        people[i][j+1][k] = 1;
        people[i][j][k+1] = 1; 
        people[i-1][j][k] = 1;
        people[i][j-1][k] = 1; 
        people[i][j][k-1] = 1; 
      }
      else{
      people[i][j][k] = 0;
      }
      }//the most inner for  
   }//inner for
  }//outer for 
  
}//dead
