void main() {
  Car car = Car();

  car.displayInfo();
  car.VehicleName = "mercedes";
  car.vehicleYear = 2010;
  car.printInfo(car.VehicleName, car.vehicleYear);

  Vehicle veh = Car(); //its allowed since car extends vehicle

  print((veh as Car)
      .numberOfWheels); // used "as" because veh was a type of Vehicle, it will treat veh as a Car type(since its inheritance)
}

//Note: can't use "print" inside a class it needs to be inside a function of the class unless the class in an abstract class

class Vehicle {
  int speed = 10;
  bool isEngineWorking = true;
  bool isLightsWorking = true;

  void printInfo(ModelName, makeYear) {
    print("Model name of the vehicle is $ModelName and make year is $makeYear");
  }
}

//class using inheritance

class Car extends Vehicle {
  int numberOfWheels = 4;
  String VehicleName = "audi";
  int vehicleYear = 2022;

//use printInfo method here and pass VehicleName and vehicleYear

  void displayInfo() {
    printInfo(VehicleName, vehicleYear);
  }

//similar method but using constructor

  // Car() {
  //   printInfo(VehicleName, vehicleYear);
  // }
}
