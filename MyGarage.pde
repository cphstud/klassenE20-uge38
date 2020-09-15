Car myCar;
Car myCar2;

void setup() {
  size(800,600);
  myCar = new Car(100,100);
  myCar2 = new Car(100,300);
}

void draw() {
  background(255);
  myCar.display();
  myCar.move();
  myCar2.display();
  myCar2.move();
}
