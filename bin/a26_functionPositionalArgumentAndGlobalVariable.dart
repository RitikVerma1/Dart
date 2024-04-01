void main() {
  String name = "dart";
  int age = 23;
  nameIs(name, age); //We are passing "Parameters"
}

// These are the positional argument, means argument that we accepted need to be in same potion as parameter.

void nameIs(String name, int age) {
  // we are accepting "arguments"
  print(name);
  print(age);

  name = "changed name ";
  print(name);
}
