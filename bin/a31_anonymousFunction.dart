//Anonymous function are the function that doesn't have a name but behave like a function

// we use this a lot in flutter

void main() {
  // Example 1: Anonymous function assigned to a variable
  var add = (int a, int b) {
    return a + b;
  };
  print(add(5, 3)); // Output: 8

  // Example 2: Passing an anonymous function as an argument
  var numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print(number * 2);
  });
  // Output:
  // 2
  // 4
  // 6
  // 8
  // 10

  // Example 3: Using an anonymous function directly
  var result = (() {
    var x = 10;
    var y = 5;
    return x * y;
  })();
  print(result); // Output: 50
}
