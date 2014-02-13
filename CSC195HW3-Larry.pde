/* Some part of the code was adapted from Processing.org. */
/* Boateng Asante, Larry CSC195 HW3 */

void setup() {
  size(640, 360); 
  stroke(242, 134, 17);
  noFill();
  // Create the font
  textFont(createFont("Georgia", 36));
  textAlign(CENTER, CENTER);
  
}

void draw() {
 if (mousePressed){
  // Sets background to Orange color and displays the text
   background(242, 134, 17);
   fill(0);
   text("MediaScipting is the BOMB!", 320, 180);
 }
 else{
  // Else it displays a spiral-like object which is controlled by
  // the movement of the cursor. 
    background(0);
  for (int i = 0; i < 200; i += 20) {
    bezier(mouseX-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
  }
}
}

