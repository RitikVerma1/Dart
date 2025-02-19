void main() {
  //operators in dart is similar to most other language

  print(10 + 20 - 30 * 23 / 2);

  int a = 10, b = 20;

  bool c = (a == b || a < b);
  print(c);

  bool d = (a == b && a < b);
  print(d);

// Using 'is keyword / type test operator'  to check the type

  print(a is int);
  print(a is! int);
}
