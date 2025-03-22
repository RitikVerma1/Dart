void main() {
  ThirdVal thvl = ThirdVal();
  thvl.printInfo();
}

mixin First {
  int firstVal = 10;
  void printInfo() {
    print(firstVal);
  }
}

mixin Second {
  int secondVal = 10;
  void printInfo() {
    print(secondVal);
  }
}

class ThirdVal with First, Second {
  int d = 3;
  @override
  int secondVal = 0;

  @override
  void printInfo() {
    print(firstVal * secondVal * d);
  }
}
