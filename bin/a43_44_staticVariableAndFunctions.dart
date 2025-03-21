/*static functions and variable are used for accessing and storing static value
if these are created inside a class you don't(can't) have to create instance of the class to access them
it will give you an error if you trying to access it with the instance of the class.
*/
void main() {
//since you are accessing static variable and function you can't use instance of class, you need to call it directly.

  print(TestStatic.age);
  print(TestStatic.name);

  TestStatic.func();
}

class TestStatic {
//Static variable   // mostly used if something is constant
//Static variable can't be initialized(passed as a parameter) in constructor
  static final int age = 20;

  static String name = "dart";

//static function
//static function and variables can't be accessed by instance of class
//we can accesss them by using ("ClassName.variableName;  or  ClassName.functionName();")
  static void func() {
    print("Static function called");
  }
}
