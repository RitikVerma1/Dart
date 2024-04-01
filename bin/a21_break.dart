// break make the code jump out of the current loop if 1 condition is met

void main() {
  String str = "Hello";

  for (int i = 0; i < str.length; i++) {
    if (i == 1 || i == 2 || i == 3) {
      break; //when i==1 (or the condition) came the "break" skips the entire loop
      //Exit the loop when first condition met
    } else {
      print(str[i]);
    }
  }
}
