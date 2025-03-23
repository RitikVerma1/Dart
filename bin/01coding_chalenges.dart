import 'dart:async';

void main() {
  List<dynamic> dList = [10.0, 20, 30, 40, StudentsName("flutter")];

  print(dList[2]);
  dList[4].printInfo();

  Demo dem = Demo("flutter", 200000);
}

class StudentsName {
  String name;
  StudentsName(this.name) {
    print(name);
  }
  void printInfo() {
    print("class student");
  }
}

class Demo<T, A> {
  T name;
  A age;
  Demo(this.name, this.age) {
    print("$name $age");
  }
}
