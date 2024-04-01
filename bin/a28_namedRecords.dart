// records return multiple value from a function

void main() {
  //
  var call = demo();
  print(call.name); // no need to use $1 , $2 etc just call by its name
  print(call.age);
}

({String name, int age}) demo() {
  //
  return (age: 23, name: "ritik");
}
