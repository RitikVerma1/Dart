void main() {
  Map<String, int> marks = {"s1": 20, "s2": 23, "s3": 25, "s4": 45};

// loping through using iterable ".keys" and ".value" , these are default methods in dart which returns an iterable
//since using ".keys" and ".value" will return iterable and those are lazy loading(wont work unless called each componet one by one)
// we used .toList() to print it
  for (int i = 0; i < marks.length; i++) {
    print("${marks.keys.toList()[i]} : ${marks.values.toList()[i]}");
  }

  // a better way is 'key' and 'val' could be anything, they are just placeholder for datatype
//The forEach method in Dart takes a function as an argument.

//You passed a function without a name, making it an anonymous function.
  marks.forEach((key, val) {
    print("$key :: $val ");
  });
}
