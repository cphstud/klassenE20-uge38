public class Car {
  //egenskaber
  String carBrand;
  String carModel;
  int carCyl;
  
  // konstruktør
  Car(String brand, String model, int cyl) {
    carBrand=brand;
    carModel=model;
    carCyl=cyl;
    
  }
  
  // adfærd
  
  public void showBrand() {
    System.out.println("Brand: " + carBrand);
  }
  
  
    public static void main(String[] args) {
      // primitives
      int x=10;
      int y=5;
      
      // references
      int[] arrayOfInts = new int[42];
      // garage
      Car[] arrayOfCars = new Car[5];
      
      arrayOfInts[12]= 123;
      arrayOfInts[2] = 321;
    
      Car myCar = new Car("BMW","320i",4);
      Car myFarsBil = new Car("BMW","745i",6);
      Car myMorsBil = new Car("Volvo","240GL",4);
      arrayOfCars[1]=myMorsBil;
      arrayOfCars[4]=myCar;
      arrayOfCars[3]=myFarsBil;
      myCar.showBrand();
    }
}
