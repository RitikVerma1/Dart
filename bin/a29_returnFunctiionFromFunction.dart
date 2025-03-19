void main() {
  // returnRecords() returns a function.
  //Adding () right after it (returnRecords()()) immediately invokes the returned function.

  // returnRecords()();

  var op = returnRecords();
  op();

  /* or
  var op= returnRecords();  // Store the returned function in a variable
  op();                     // Call the function
  */
}

returnRecords() {
  return () {
    print("HI");
  };
}



/*

//In Dart, you can return a function from another function.
//This is useful when you want to create higher-order functions or closures.

Function createMultiplier(int factor) {
  return (int number) {
    return number * factor;
  };
}

void main() {
  var doubleIt = createMultiplier(2);
  var tripleIt = createMultiplier(3);

  print(doubleIt(5)); // Outputs: 10
  print(tripleIt(5)); // Outputs: 15
}

*/