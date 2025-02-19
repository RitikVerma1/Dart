void main() {
  Animal anml = Dog("dog func constructor called");

  //sealed class's all direct subclass must be implemented
  // Using a switch statement to handle different possible states
  switch (anml) {
    case Dog():
      print("Dog");
    case Cat():
      print("cat");
  }
}

//subclass can extend or implement
sealed class Animal {
  /*
    String type = "Unknown"; // Concrete variable (not required to override by direct child)

  void makeSound(); // Abstract method (must be overridden by direct child)
  
  void eat() { // Concrete method (not required to override by direct child)
    print("Eating food...");
  */
}

class Dog extends Animal {
  final String msg;
  // Constructor to initialize 'data'
  Dog(this.msg);
}

class Cat implements Animal {}

class Pig extends Cat {}
