void main() {
  int weight = 16;
  int cost = 0;

// instead of printing cost in each line , update variable in loop and print afterwords.

  if (weight >= 18) {
    cost = 100;
  } else if (weight <= 15) {
    cost = 50;
  } else {
    print("invalid");
    return; // return keyword terminates the function and exit the block when it executed

    // thats why return is use to stop the further execution of the function block
    //hence when last else called it only print "invalid" and the print method below will not get called.
    //if not return nothing then this "invalid" part will also get printed.
  }

  print(" cost is $cost"); //
}
