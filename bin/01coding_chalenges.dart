import 'dart:async';
import 'dart:typed_data';

void main() {
  List<dynamic> dList = [10.0, 20, 30, 40, StudentsName("flutter")];

  print(dList[2]);
  dList[4].printInfo();

  dList[0] = 1;

  dList.add(200);
  dList.insert(0, "0 element");

  List<Demo> dem = [Demo("FL", 23), Demo("DL", 24), Demo("EL", 25)];
  for (int i = 0; i < dem.length; i++) {
    print(dem[i]);
  }
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
  Demo(this.name, this.age);

  @override
  String toString() => "name : $name, age : $age";
}
