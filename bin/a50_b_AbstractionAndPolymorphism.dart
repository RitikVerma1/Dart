/*
abstraction is the process of hiding the internal details and complexity of the object 
and only exposing essential features and functionality

How is Abstraction Used in Dart?
In Dart, abstraction is done using abstract classes.

Abstract Class: A class that cannot be used directly to create objects. It defines
 what methods (actions) should exist, but it doesn't provide the actual details of how they work.

Abstract Method: A method that is defined but doesn't have the
 actual code inside it. The subclass that inherits from this class must provide the details.
*/

void main() {
  Animal dog = Dog();
  // Polymorphism: dog is of type Animal but actually holds a Dog object
  Animal cat = Cat();
  // Polymorphism: cat is of type Animal but actually holds a Cat object

  dog.makeSound(); // Calls Dog's implementation of makeSound
  cat.makeSound(); // Calls Cat's implementation of makeSound
}

// Abstract class representing an animal
abstract class Animal {
  void makeSound(); // Abstract method for making a sound
}

// Concrete subclass Dog implementing Animal
class Dog implements Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

// Concrete subclass Cat implementing Animal
class Cat implements Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}
