/*  Use extends to inherit from a single superclass for reusing and extending behavior. 
Use implements to adhere to interfaces, ensuring method implementations. Combining both allows for flexible class design.*/

void main() {
  Dog dog = Dog();
  dog.makeSound(); // Calls Dog's implementation of makeSound
  dog.eat(); // Calls Dog's implementation of eat
  dog.charge(); // Calls Dog's implementation of charge
  dog.giveBirth(); // Calls Mammal's giveBirth method
}

// Defines the Animal interface
class Animal {
  void makeSound() {} // Method for making a sound
  void eat() {} // Method for eating
}

// Defines the Machine interface
class Machine {
  void charge() {} // Method for charging
}

// Dog class extends Mammal and implements Animal and Machine
class Dog extends Animal implements Machine {
  @override
  void makeSound() {
    print("Dog barks");
  }

  @override
  void eat() {
    print("Dog eats");
  }

  @override
  void charge() {
    print("Dog is charging (hypothetical, for example purposes)");
  }

  void giveBirth() {
    print("Mammal gives birth to live young");
  }
}
