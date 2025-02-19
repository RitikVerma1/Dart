/*
Encapsulation is the principle of bundling data and methods that operate on the data within a single unit, often called a class.
n It helps in hiding the internal state of an object and only exposing the necessary functionalities to interact with it. 
*/

void main() {
  // Create an instance of the Car class
  Car myCar = Car("Toyota", "Camry", 2020);

  // Accessing properties using getter methods
  print("My car's make: ${myCar.getMake()}");
  print("My car's model: ${myCar.getModel()}");
  print("My car's year: ${myCar.getYear()}");

  // Using a method to display car information
  myCar.displayInfo();
}

class Car {
  // Private fields
  String _make;
  String _model;
  int _year;

  // Constructor to initialize the Car object
  Car(this._make, this._model, this._year);

  // Getter methods to access private fields
  String getMake() {
    return _make;
  }

  String getModel() {
    return _model;
  }

  int getYear() {
    return _year;
  }

  // Method to display car information
  void displayInfo() {
    print("Car Info: $_year $_make $_model");
  }
}
