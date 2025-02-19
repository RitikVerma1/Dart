/*
The implements keyword is used when a class needs to follow the structure of another class (or interface(abstract class)) 
but does not inherit any behavior.

Explanation:
Animal is an abstract class with a method makeSound(), but no body.
Dog and Cat classes use implements Animal:
They must override the makeSound() method.
They do not inherit behavior, only the method structure.

Why Use implements?
✅ Ensures every class follows a specific structure.
✅ Allows multiple classes to follow the same contract(method or something that classes must have) but implement their own logic.
✅ Encourages clean, modular code.

This is useful when you want different objects to behave in a standardized way but with unique implementations. 🚀

*/

void main() {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.makeSound(); // Calls Dog's version of makeSound()
  cat.makeSound(); // Calls Cat's version of makeSound()
}

// This is an interface (abstract class can be used as interface)
abstract class Animal {
  void makeSound(); // Method without a body (must be overridden)
}

// Dog class implements Animal
class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof! Woof!"); // Dog's implementation
  }
}

// Cat class implements Animal
class Cat implements Animal {
  @override
  void makeSound() {
    print("Meow! Meow!"); // Cat's implementation
  }
}
