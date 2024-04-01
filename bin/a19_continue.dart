// Continue in used to skip current condition

void main() {
  String str = "Hello";

  for (int i = 0; i < str.length; i++) {
    if (i == 1 || i == 2 || i == 3) {
      continue; //when i==1 (or the condition) came the "continue" said to re-run the if loop
    } else {
      print(str[i]);
    }
  }
}
