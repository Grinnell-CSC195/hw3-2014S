int w = 500;
int h = 500;
int squarewid = 5; 
int cols =  w/squarewid;
int rows = h/squarewid; 
int[][] people; 
int gen = 0;
int[] peepz = {1, 2, 5, 7, 70, 80, 90, 56, 23, 60};

void setup(){
size(w, h);
people = new int[cols][rows]; 
init(cols, rows);
add(peepz); 
}

void draw(){
  dead();
  for (int i = 0; i < cols; i++)
  {
    for (int j = 0; j < rows; j++)
    {
      if(people[i][j] == 1)
      {
        stroke(255, 155, 155); 
        fill(gen, gen*2, gen*3);
        //gen = (gener(gen) % 255) ;
       rect(i*squarewid, j*squarewid,squarewid, squarewid);
    }else
    {
       stroke(255, 155, 155);
       fill(255); 
        //fill(gen*3, gen*2, gen);
        //gen = (gener(gen) % 255);
       rect(i*squarewid, j*squarewid,squarewid, squarewid);
    }//else
  
}
  }
}

void init(int wid, int hei){
 for (int i = 0; i < wid; i++)
 {
   for (int j = 0; j < hei; j++)
   {
    people[i][j] = 1;
   }
 }
  
}//init

void add(int[] peeps){
  int len = peeps.length;
  for (int i = 0; i < len; i = i + 2)
  {
    println(i); 
    people[i][i+1] = 1; 
  }
    
}//add

void dead(){
  int sum = 0; 
  for(int i= 1; i < cols - 1 ;i++)
  {
    for (int j = 1; j < rows - 1; j++)
    {
      sum = people[i + 1][j] + people[i][j+1] + people[i-1][j] + people[i][j-1];
      if (sum < 1)
      {
        people[i][j] = 0;
      }else if (sum < 2){
        people[i+1][j] = 1; 
        people[i][j+1] = 1;
        people[i-1][j] = 1;
        people[i][j-1] = 1; 
      }
      else{
      people[i][j] = 0;
      } 
   }//inner for
  }//outer for 
  
}//dead

int gener(int gen1){
  println("in Gen"); 
  gen1 = gen + (1 % 255); 
  println(gen1); 
 return gen1; 
}
  
  
