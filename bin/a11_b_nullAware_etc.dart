void main() {
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
