
int rad = 20; // Width of the shape
int rad2=80;
float xpos, ypos;    // Starting position of shape    
float xspeed = 2.8;  // Speed of the shape
float yspeed = 5.2;  // Speed of the shape
float speedFactor=0.5;
int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom

// second ball
float xpos2, ypos2;
float xspeed2 = 1.8; 
float yspeed2 = 2.2;  
float speedFactor2=0.5;
int xdirection2 = 1; 
int ydirection2 = 1;
float distance=0;


void setup() 
{
  size(640, 360);
  noStroke();
  frameRate(70);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
  xpos2 = width/3;
  ypos2 = height/3;
  colorMode(HSB);
}

void draw() 
{
  background(255);
  

  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  //println("Xpos: " + xpos + " and ypos: " + ypos);

  xpos2 = xpos2 + ( xspeed2 * xdirection2 );
  ypos2 = ypos2 + ( yspeed2 * ydirection2 );
  if (xpos2 > width-rad2 || xpos2 < rad2) {
    xdirection2 *= -1;
  }
  if (ypos2 > height-rad2 || ypos2 < rad2) {
    ydirection2 *= -1;
  }


  fill(124, 100, 90);
  ellipse(xpos2, ypos2, rad2, rad2);
  fill(200, 100, 90);
  ellipse(xpos, ypos, rad, rad);

}


void keyPressed() {
  if (key=='y') {
    //increase in y
    println(" pressed y");
    yspeed=yspeed+speedFactor;
  }
  if (key=='Y') {
    // decrease in y
    println(" pressed Y");
    yspeed=yspeed-speedFactor;
  }
  // do the same for x
}
