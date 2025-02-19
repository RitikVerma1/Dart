/*static functions and variable are used for accessing and storing static value
if these are created inside a class you don't(can't) have to create instance of the class to access them
it will give you an error in you trying to access it with the instance of the class.
*/
void main() {
//since you are accessing static variable and function you can't use instance of class, you need to call it directly.

  print(TestStatic.age);
  print(TestStatic.name);

  TestStatic.func();
}

class TestStatic {
//Static variable   // mostly sed if something is constant
  static final int age = 20;

  static String name = "dart";

//static function
  static void func() {
    print("Static function called");
  }
}
