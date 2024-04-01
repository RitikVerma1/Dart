void main() {
  demo(23, name: "dart", age: 23, b: true);

  // 23 is positional argument rest is named argument
}

// we can only pass positional argument before named one.

void demo(int a,
    {required String name, required int age, required bool b, String? s}) {
  // required : its compulsory to provide value
  //else we can use nullable type like " String? s"
  //which means user can skip this value if they want.

  print(name);
  print(age);
  print(b);
  print(s);
}
