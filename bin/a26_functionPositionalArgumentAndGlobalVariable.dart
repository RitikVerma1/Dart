void main() {
  String name =
      "dart"; //we can also make it a global variable then we dont have to pass it as a parameter and it will be accisible in the entire file but not recommended.
  int age = 23;
  nameIs(name, age); //We are passing "Parameters"
}

// These are the positional argument, means argument that we accepted need to be in same position/ORDER as parameter.
// Datatype String/ int is important to declare otherwise dart will assume that the variable is dynamic.
void nameIs(String name, int age) {
  // we are accepting "arguments"
  print(name);
  print(age);

  name = "changed name ";
  print(name);
}
