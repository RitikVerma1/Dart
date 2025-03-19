//void means this function not returning anything

//also here we don't have any datatype means it assumes ita a "dynamic"

//void main() is a globle function since its not inside any class
void main() {
  print("Name: ${nameIs()} , age: ${ageIs()}");
}

//String is the return type of this function

String nameIs() {
  return "Dart";
}

int ageIs() {
  return 23;
}

//try passing argument in function
