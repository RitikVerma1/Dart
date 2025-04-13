void main() {
  print("futures");
  final result = returnAfterTwoSeconds().then((val) {
    print(val);
  });

  print(2);
}

Future<String> returnAfterTwoSeconds() {
  return Future.delayed(Duration(seconds: 3), () {
    return "hey!!";
  });

  //return "Heyy!!";
}
