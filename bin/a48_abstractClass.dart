/*eplaination

An abstract class is a class that cannot be 
instantiated(made object of it) directly.
It can have:
Abstract methods (methods without implementation).
Concrete methods (methods with implementation).
A subclass must override all abstract methods.

 When to Use abstract Classes?
✅ When you want to provide a base structure with some shared behavior.
✅ When you want some methods to be mandatory (abstract) and some optional (concrete).
✅ When you don’t want to create objects of the base class itself, but only of its subclasses.

Abstract Class → Can be extended or implemented, and can contain both concrete and abstract methods.


*/

void main() {
  Dog dog = Dog("Buddy");
  Cat cat = Cat("Whiskers");

  dog.speak();
  cat.speak();

  dog.eat();
  cat.eat();
}

// Abstract class (interface-like but with concrete methods)
abstract class Animal {
  String name;

  Animal(this.name); //constructor can intiated by subclass

  void makeSound(); // Abstract method (must be implemented)

  // Concrete method (must be manually implemented in subclasses)
  void speak() {
    print("$name says:");
    makeSound();
  }

  void eat() {
    print("$name is eating.");
  }
}

// Dog class (Must implement everything explicitly)
class Dog implements Animal {
  @override
  String name;

  Dog(this.name);

  @override
  void makeSound() => print("Woof! Woof!");

  @override
  void speak() {
    print("$name says:");
    makeSound();
  }

  @override
  void eat() => print("$name is eating.");
}

// Cat class
class Cat implements Animal {
  @override
  String name;

  Cat(this.name);

  @override
  void makeSound() => print("Meow! Meow!");

  @override
  void speak() {
    print("$name says:");
    makeSound();
  }

  @override
  void eat() => print("$name is eating.");
}
