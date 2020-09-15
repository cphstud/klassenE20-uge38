class Car {
  //data, egenskaber, attributter
  float xPos;
  float yPos;
  float carSpeed;
  int carColor;
  
  // konstruktør, jordmor
  Car(){
    xPos=100;
    yPos=100;
    carSpeed=5;
    carColor=122;
  }
  Car(float x,float y){
    xPos=x;
    yPos=y;
    carSpeed=5;
    carColor=122;
  }
  
  // metoder, funktioner, verber
  void display() {
    rectMode(CENTER);
    fill(carColor);
    rect(xPos,yPos,20,10);   
  }
  
  void move() {
    xPos=xPos+carSpeed;
  } 
}
