void main() {
  // Nullable variables (can hold null values)
  String? name;
  int? age;
  double? height;

  // 1️⃣ ??= (Null-Aware Assignment)
  // Assigns "Guest" only if 'name' is null, otherwise keeps the existing value.
  name ??= "Guest";
  print("Name: $name"); // Output: "Guest" (since name was null)

  // 2️⃣ ?? (Null-Coalescing Operator)
  // Uses '18' if 'age' is null, otherwise uses the existing value.
  int userAge = age ?? 18;
  print("Age: $userAge"); // Output: 18 (since age was null)

  // 3️⃣ ?. (Null-Aware Access)
  // Calls .toStringAsFixed(1) on 'height' only if it is not null.
  // If 'height' is null, it returns "Unknown" instead of causing an error.
  print("Height: ${height?.toStringAsFixed(1) ?? "Unknown"}");
  // Output: "Unknown" (since height was null)

  // 4️⃣ ! (Null Assertion Operator)
  // Before using '!', we assign a non-null value to 'age' to prevent runtime errors.
  //if age was null "!" will tell that its not null, it will help if we are using nullable variable in loops etc, to stop runtime error;
  age = 25; // Now 'age' is not null.
  print("Confirmed Age: ${age!}"); // Output: 25 (age is safely non-null)

  int? salary;
  //here ! means salary is not null(we use this because in future maybe this salary value be given by inherited class or parameter)
  if (salary! < 25000) {
    print("low salary : $salary");
  }

//********************************************************* */

  // Null-aware assignment (??=)
  int? a; //int? a=null; this will also works but its not recomended
  print(a); // OP: null

  String? s;
  print(s?.length ?? 0); // it will print 0 instead of null if s is null

  a ??= 42; // Assigns 42 because 'a' is null
  print('a: $a'); // Outputs: 42

  // Null-aware access (? or !) questionmark is asking if it is null and ! is saying that yes it is null
  String? b;
  int? l = b?.length; // Accesses length only if 'b' is not null
  print('Length: $l'); // Outputs: null

  b = 'Hello, Dart!';
  l = b?.length; // Now gets the length of 'Hello, Dart!'
  print('Length after assignment: $l'); // Outputs: 12

  // Null-coalescing operator (??)
  String? c;
  String d = c ?? 'default'; // Uses 'default' if 'c' is null
  print('d: $d'); // Outputs: default

  c = 'Valid input';
  d = c ?? 'default'; // Uses 'Valid input' as 'c' is not null
  print('d after input: $d'); // Outputs: Valid input
}
