/* 
Why Use Sealed Classes?
Prevents unwanted inheritance: Only allowed(direct subclass not subclasse's child) subclasses can extend or implement the sealed class.
Useful for handling states: Helps in managing states in Flutter apps (e.g., loading, success, error).
Compile-time safety: Ensures that all possible cases are handled (especially useful in switch statements).
Where is it Useful?
State management (e.g., API calls, UI states)
Navigation and routing in Flutter
Ensuring only specific implementations exist for a class
This makes your code safer, cleaner, and more predictable! 🚀
*/

// Defining a sealed class, meaning only specific classes within the same file can extend it.
//sealed class are a bit like abstract class, you cant make its object

//you can't access sealed class outside the dart file.

void main() {
  Animal anml = Dog("dog func constructor called");

  //sealed class's all direct subclass must be implemented
  // Using a switch statement to handle different possible states

  /*  a sealed class does not require a switch case in main().

However, using a switch case is common with sealed classes because the Dart compiler enforces 
exhaustiveness (i.e., all possible subclasses must be handled). */
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
