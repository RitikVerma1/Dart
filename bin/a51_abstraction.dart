void main() {
  Animal dog = Dog(); // Creating an instance of Dog using the Animal type
  // because we can't create instant of the abstract class
  //this allows to hide abstract class

  dog.makeSound(); // Calls the makeSound method implemented in Dog
}

// Abstract class representing an animal
abstract class Animal {
  // Abstract method for making a sound
  void
      makeSound(); // Abstract methods have no implementation and end with a semicolon
}

// Concrete subclass Dog implementing Animal
class Dog implements Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}
