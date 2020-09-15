class Car {
  //data, egenskaber, attributter
  float xPos;
  float yPos;
  float carSpeed;
  int carColor;
  
  // konstruktør, jordmor
  
  
  // metoder, funktioner, verber
  void display() {
    rectMode(CENTER);
    rect(xPos,yPos,20,10);   
  }
  
  void move() {
    xPos=xPos+carSpeed;
  } 
}
