import 'a55_b_sealedClass.dart';

void main() {
  Class1 cl = Class2();
  cl.printInfo();

  Class3 cl3 = Class3();
  cl3.printData();
}

sealed class Class1 {
  int a = 10;
  void printInfo() => print("class1");
}

class Class2 extends Class1 {
  @override
  void printInfo() {
    print("class 2 $a");
  }
}

class Class3 extends Class2 {
  @override
  void printInfo() {
    print("class 3 ");
  }

  void printData() {
    print(a);
  }
}
