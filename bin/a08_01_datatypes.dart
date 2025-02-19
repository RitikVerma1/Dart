void main() {
  // Numbers: int, double, and num
  int age = 25; // An integer value
  double pi = 3.14; // A double value for decimals
  num anyNumber = 10; // Can hold either int or double
  anyNumber = 10.5; // Now holds a double
  print('int: $age, double: $pi, num: $anyNumber');

  // Strings: Text values
  String firstName = 'Alice'; // A string using single quotes
  String lastName = "Smith"; // A string using double quotes
  String fullName = '$firstName $lastName'; // String interpolation
  print('Full Name: $fullName');

  // Booleans: true or false
  bool isLoggedIn = true; // Boolean value
  print('Is Logged In: $isLoggedIn');

  // Lists: Ordered collections
  List<int> numbers = [1, 2, 3, 4]; // A list of integers
  List<dynamic> mixedList = [1, 'hello', true]; // A list with mixed types
  print('List of numbers: $numbers');
  print('Mixed list: $mixedList');

  // Sets: Unordered collections of unique items
  Set<int> uniqueNumbers = {1, 2, 2, 3}; // Duplicate values are removed
  print('Set of unique numbers: $uniqueNumbers');

  // Maps: Key-value pairs
  Map<String, int> studentScores = {
    'Alice': 95,
    'Bob': 85,
  };
  print('Map of student scores: $studentScores');

  // Runes: Unicode characters
  Runes emoji = Runes('\u{1F600}'); // Unicode for 😀
  print('Runes (Emoji): ${String.fromCharCodes(emoji)}');

  // Symbols: Compile-time constant symbols
  Symbol mySymbol = #mySymbol; // A symbol
  print('Symbol: $mySymbol');

  // Null and Null Safety
  String? nullableString = null; // Nullable string
  String nonNullableString = 'Non-nullable'; // Non-nullable string
  print('Nullable: $nullableString, Non-nullable: $nonNullableString');

  // Dynamic type: Holds any type
  dynamic anything = 'Hello'; // Initially a string
  print('Dynamic (String): $anything');
  anything = 42; // Now holds an integer
  print('Dynamic (Integer): $anything');

  // Void: No return type
  void printMessage() {
    print('This is a void function.');
  }

  printMessage();

  // Object: Base type of all Dart objects
  Object anyObject = 'A string as an Object';
  print('Object: $anyObject');
  anyObject = 123; // Now holds an integer
  print('Object (Integer): $anyObject');
}
