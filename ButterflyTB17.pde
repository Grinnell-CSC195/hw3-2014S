// Based off of: http://processing.org/examples/mousepress.html
  float c;
  int width = 900;
  int height = 600;
  
  void
  setup()
   {
     c = 0;
     background(0);
     size(width,height); 
     colorMode(HSB,100);
   }
  
  void
  draw()
   {   
     fill(c, 100, 100);
     c = (c+1) % 155;
     if (mousePressed)
       { 
         strokeWeight(1);
         stroke(0);
       }
     else 
       { 
         strokeWeight(3);
         stroke(c, 100, 100);
       }  
     ellipse(mouseX+2.5,mouseY-10,5,20); 
     ellipse(mouseX-10,mouseY+2.5,20,5); 
     ellipse(mouseX-2.5,mouseY+10,5,20); 
     ellipse(mouseX+10,mouseY-2.5,20,5); 
     line(mouseX+10.3, mouseY+10.3, mouseX-5.2, mouseY-5.2);
   }
