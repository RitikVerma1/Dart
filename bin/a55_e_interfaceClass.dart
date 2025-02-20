/*
An interface class can be implemented but canot be extended
You can instantiate it (make object)
it also works with classes outside its dart file

it is used to enforce that a class must implement all the methods and properties declared in the interface class.
*/

void main() {
  Car myCar = Tesla();
  myCar.start();
  myCar.stop();
}

// Use 'abstract interface class' to allow abstract methods
abstract interface class Car {
  void start(); // Abstract method (no body)
  void stop(); // Abstract method (no body)
}

// Implementing the interface class
class Tesla implements Car {
  @override
  void start() {
    print("Tesla is starting...");
  }

  @override
  void stop() {
    print("Tesla is stopping...");
  }
}
