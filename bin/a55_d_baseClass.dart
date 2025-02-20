/*
A base class allows inheritance but does not allow implementation. This means you can extend it,
 but you cannot implement it as an interface.

 only base, sealed or final class can extend it not regular class.

 Use a base class when you want to force inheritance but prevent interface-style implementation.
🔹 Ideal for hierarchical relationships, like when all child classes should share a base functionality.
🔹 Ensures proper extension, preventing unintended interface implementation.

✅ Example Use Cases of base class:
Game Development: Common base class for different game characters.
Custom UI Components: Base class for UI widgets.
State Management: Base class for handling app states.
*/

// Defining a base class
base class Vehicle {
  void startEngine() {
    print("Engine started");
  }
}

// Extending the base class
class Car extends Vehicle {
  void drive() {
    print("Car is driving");
  }
}

void main() {
  Car myCar = Car();
  myCar.startEngine(); // ✅ Allowed (Inherited from Vehicle)
  myCar.drive(); // ✅ Allowed
}
