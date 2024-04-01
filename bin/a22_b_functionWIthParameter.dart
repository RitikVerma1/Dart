void printInfo(String name, String gender, [String title = "sir/ma'am"]) {
  /*

  
   "sir/ma'am": This is a default value assigned to the parameter title. If no value is provided for title when calling the 
  printInfo function, it will default to "sir/ma'am"
  
  []: The square brackets around the parameter title indicate that it's an optional parameter. Optional parameters can 
  be omitted when calling the function. If omitted, the default value will be used.
  
  
  */

  print("Hello $title $name your gender is $gender.");
}

void main() {
  printInfo("John", "Male");
  printInfo("John", "Male", "Mr.");
  printInfo("Kavya", "Female", "Ms.");
}
