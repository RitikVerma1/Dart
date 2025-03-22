void main() {
  One one = Two();
  one.printmethod1();
  one.printmethod2();
}

abstract class One {
  int a = 20;
  void printmethod1();

  void printmethod2() {
    print("print method 2");
  }
}

class Two implements One {
  @override
  int a = 20;

  @override
  void printmethod1() {
    print("two");
  }

  @override
  void printmethod2() {
    print("printmethod 2 override ");
  }
}
