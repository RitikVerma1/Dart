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

// positional and named records  below

/* 
void main() {
  var a = returnThis();
  print(a.age);
  print(a.$1);
  print(a.name);
}

(String title, {String name, int age}) returnThis() {
  return ("mr", name: "ritik", age: 24);
}
*/
