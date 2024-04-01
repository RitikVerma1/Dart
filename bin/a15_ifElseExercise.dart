void main() {
  int weight = 18;
  int cost = 0;

// instead of printing cost in each line , update variable in loop and print afterwords.

  if (weight >= 18) {
    cost = 100;
  } else if (weight <= 15) {
    cost = 50;
  } else {
    print("invalid");
    return;
    //if not return nothing then this "invalid" part will also get printed.
  }

  print(" cost is $cost");
}
