import 'a55_b_sealedClass.dart';

void main() {
  Class1 cl = Class2();
  cl.printInfo();

  Class3 cl3 = Class3();
  cl3.printData();
}

final class Class1 {
  int a = 10;
  void printInfo() => print("class1");
}

sealed Class2 extends Class1 {
  @override
  void printInfo() {
    print("class 2 $a");
  }
}

