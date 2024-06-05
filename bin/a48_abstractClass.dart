/*
An abstract class in Dart is a class that cannot be instantiated directly but serves as a blueprint for other classes. 
It can contain both abstract (unimplemented) methods and concrete (implemented) methods. 
Abstract classes are used to define a common interface or behavior 
that subclasses must adhere to, while allowing each subclass to provide its own specific implementation.
*/
void main() {
  final car = Car();

  car.accelerate();
}

abstract class Vehicle {
  void accelerate();
  int var1 = 20;
}

class Car extends Vehicle {
  //since it extended an abstract class we need to implement the accelerate method below, can't skip it
  //we can skip variable because we are extending and not implementing.
  @override
  void accelerate() {
    print(' accelerating');
  }
}
