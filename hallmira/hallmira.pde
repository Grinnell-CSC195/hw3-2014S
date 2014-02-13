class spiralCoords {
  int w;
  int h;
  float x, y, t;
  int dt, r, g, b;

  spiralCoords (int dt) {
    //fill variables
    this.w = width;
    this.h = height;

    //set first coordinate
    this.t = 0;
    this.x = w/2;
    this.y = h/2;
    this.dt = dt;
    this.r = 1;
    this.g = 1;
    this.b = 1;
  } //spiralCords

  void nextCoord() {
    this.t += this.dt;
    
    //this is supposed to make a spiral, but it doesn't because
    //of the way the curve vertexes are implemented-- could probably
    //fix with effort
    
    this.x = w/4 *cos(this.t) + w/2; //size scale * parametric * center point
    this.y = h/4 * sin(this.t) + h/2;
    
  }//nextCoord
  
  //still trying to get this to work satisfactorially
  void nextColor () {
    this.r = (this.r + (int) this.t * 1)%255;
    this.g = (this.g + (int) this.t * 2)%255;
    this.b = (this.b + (int) this.t * 3)%255;
  }//nextColor
}//spiralCoords

void setup()
{
  size(200, 200);
  background(255);
  smooth();
  spiralCoords sp;
  sp = new spiralCoords(10);

  noFill();
  stroke(10);
  beginShape();
  curveVertex(sp.x, sp.y);
  while (sp.t<500.0) { // the first control point
    sp.nextCoord();
    
    //change colors periodically
    if ((int) sp.t%17 == 0) {
      sp.nextColor();
    }//if
    
    stroke(sp.r, sp.g, sp.b);
    curveVertex(sp.x, sp.y);
    println("t is "+sp.t);
    println("rgb is "+sp.r + " " + sp.g + " " + sp.b);
    println();
  } //for

  endShape();
}

