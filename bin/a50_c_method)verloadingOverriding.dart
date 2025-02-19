//

//overriding

/*
Method overriding occurs when a subclass provides a specific implementation of a method that is already defined in its superclass.
 This allows subclasses to provide their own version of the method while maintaining the same method signature as the superclass.
*/

void main() {
  Dog dog = Dog();
  dog.makeSound(); // Calls Dog's implementation of makeSound
}

// Define the superclass Animal
class Animal {
  void makeSound() {
    print("Generic animal sound");
  }
}

// Define the subclass Dog which overrides makeSound method
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}


/*
Method Overloading:
Method overloading allows a class to define multiple methods with the same name but different parameter lists. 
Dart does not support method overloading directly, but you can achieve similar functionality using optional parameters or named parameters.
*/

// void main() {
//   Calculator calculator = Calculator();
//   print(calculator.add(2, 3)); // Calls add with two parameters
//   print(calculator.add(2, 3, 4)); // Calls add with three parameters
// }

// class Calculator {
//   int add(int a, int b, [int c]) {
//     if (c != null) {
//       return a + b + c; // Adds three numbers
//     } else {
//       return a + b; // Adds two numbers
//     }
//   }
// }
