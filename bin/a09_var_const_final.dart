void main() {
  var a = "Test";
  // var identifies the datatype of right hand side value and assign its that as its datatype.

  // a=20;   // Can't assign different datatype value in var(here we tried to add int to a string type variable.)

  print(a);

// Final Vs const

  /*If you never intend to change a variable, use final or const, either instead of var or in addition to a type. A final variable can be set only once; a const variable is a compile-time constant. (Const variables are implicitly final.)

              Note
              Instance variables can be final but not const. */

  final b = DateTime.now();
  //Its runtime constant // can only assign once  // its immutable
  print(b);

  const c = 30;
  // Its compile time constant  // constant variable cant be assign value later onn.
  print(c);
}
