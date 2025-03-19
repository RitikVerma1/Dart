/*
Enumerated types, often called enumerations or enums, are a special kind of class
used to represent a fixed number of constant values.

in short_ we provide something(like value) inside enum, and other method using that enum can only use those things 
for eg. if a class's constructor has string type then user can enter any string but if that constructor has enum, the user can't enter 
anything else than what is defined in enum.

In Dart, enum (short for enumeration) is used to define a fixed set of named constant values.
 It is commonly used when you need to represent a specific set of options or states in your application.

Use Cases of enum in Dart
Representing states (e.g., loading, success, failure)
Defining modes (e.g., light mode, dark mode)
Representing fixed categories (e.g., days of the week, user roles)
Improving code readability and maintainability

Enums in Dart help in writing clean, readable, and maintainable code by providing
 a way to define a fixed set of values. They are particularly useful in state management, UI themes, and data modeling.


Declaring enhanced enums
#
Dart also allows enum declarations to declare classes with fields, methods, and const constructors which are limited to a fixed number of known constant instances.

To declare an enhanced enum, follow a syntax similar to normal classes, but with a few extra requirements:

Instance variables must be final, including those added by mixins.
All generative constructors must be constant.
Factory constructors can only return one of the fixed, known enum instances.
No other class can be extended as Enum is automatically extended.
There cannot be overrides for index, hashCode, the equality operator ==.
A member named values cannot be declared in an enum, as it would conflict with the automatically generated static values getter.
All instances of the enum must be declared in the beginning of the declaration, and there must be at least one instance declared.
Instance methods in an enhanced enum can use this to reference the current enum value.

Here is an example that declares an enhanced enum with multiple instances, instance variables, getters, and an implemented interface:

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}

*/
