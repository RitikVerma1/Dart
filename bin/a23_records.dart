// Records used to return multiple value of multiple datatype from 1 function
//
void main() {
  var a = ReturnMultiple();
  print(a); // print all value of a

  print(a.$2); // print only second value ie. string in our case;

  //
}

(int, String, bool, double) ReturnMultiple() {
  return (12, "hello", false, 2.33);

  // return value must be in same sequence of the datatype declare before function name
}
