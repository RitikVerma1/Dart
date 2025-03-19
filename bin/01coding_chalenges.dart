void main() {
  Cokkie cke = Cokkie(165, age: 20, name: "flutter");
}

class Cokkie {
  int age;
  String? name;
  int height;

  Cokkie(this.height, {required this.age, this.name}) {
    print(height);

    m1(age);
    m2(name);
  }

  void m1(int ageIs) {
    print("$ageIs from m1");
  }

  void m2(String? nameIs) {
    print("$name from m2");
  }
}
