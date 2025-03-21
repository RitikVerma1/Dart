/* inheritance is a core object-oriented programming concept where
 a new class (the child or subclass) can inherit properties and methods
 from an existing class (the parent or superclass), 
 enabling code reuse and specialization. */

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

//*  IMP */

void main() {
  // Create an object of SmallAnimals and call the setup function
  SmallAnimals animal = SmallAnimals();
  animal.setupAnimal("Rabbit", 30);
}

class LifeOnEarth {
  String? speciesName;
  int? speciesSize;

  void SurvivalChance() {
    if (speciesSize != null && speciesSize! < 50) {
      print("Survival chance less than 30% for $speciesName");
    } else {
      print("Survival chance more than 50% for $speciesName");
    }
  }
}

// Child class inheriting from LifeOnEarth
class SmallAnimals extends LifeOnEarth {
  // Method to assign values and call the inherited function
  void setupAnimal(String name, int size) {
    speciesName = name; // Assign species name
    speciesSize = size; // Assign species size
    SurvivalChance(); // Call the inherited function
  }
}

//*  IMP */
//* Code Without Extra Function in Child Class/

void main() {
  // Create an object of SmallAnimals and directly assign values
  SmallAnimals animal = SmallAnimals()
    ..speciesName = "Rabbit" // Assign species name
    ..speciesSize = 30 // Assign species size
    ..SurvivalChance(); // Call the inherited function
}

class LifeOnEarth {
  String? speciesName;
  int? speciesSize;

  void SurvivalChance() {
    if (speciesSize != null && speciesSize! < 50) {
      print("Survival chance less than 30% for $speciesName");
    } else {
      print("Survival chance more than 50% for $speciesName");
    }
  }
}

// Child class inheriting from LifeOnEarth
class SmallAnimals extends LifeOnEarth {
  // No need for an extra method, directly assign values in main()
}
