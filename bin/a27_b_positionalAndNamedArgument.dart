void main() {
  int Age = 23;
  demo(23, name: "dart", age: Age, b: true);

  // 23 is positional argument rest is named argument
  //in positional argument position of a parameter and argument needs to match
  //in named argument there is no need to such a thing
}

// we can only pass positional argument before named one.

void demo(int a,
    {required String name, required int age, required bool b, String? s}) {
  // int a05 is positional argument rest is named argument
  // required : its compulsory to provide value
  //else we can use nullable type like " String? s"
  //which means user can skip this value if they want.

  print(name);
  print(age);
  print(b);
  print(s);
}
