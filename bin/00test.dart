void main() {
  test().m1();
  print(test().m2());

  test obj = test();

  obj.m1();
  print(obj.m2());
}

class test {
  int size = 20;
  String name = "Windows";

  void m1() {
    print("Method 1 is being called");
  }

  String m2() {
    return "$name $size";
  }
}
