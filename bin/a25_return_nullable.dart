void main() {
  print(out());
}

String? out() {
  //The function will return a String or Null
  //If we don't return null, it will show a warning but still compile
  //Its better to write "return null" line or nothing at all,

  print("Out method called");
  //this print line can't be below "return" line.
  return null;
}
