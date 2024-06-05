void main() {
  final car = Car();

  car.accelerate();
}

abstract class Vehicle {
  void accelerate();
}

class Car extends Vehicle {
  @override
  void accelerate() {
    print(' accelerating');
  }
}
