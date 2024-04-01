void main() {
  var (a, b, c, d) = ReturnMultiple(); // fetching all value and assigning properly to the variable
  // since we use "var" it will assign correct datatype to each variable

  print(a);
  print(b);
  print(c);
  print(d);
}

(int, String, bool, double) ReturnMultiple() {
  return (12, "hello", false, 2.33);

  // return value must be in same sequence of the datatype declare before function name
}
