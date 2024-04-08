/* Syntax : 

switch ( expression ) { 
   case value1: { 
      // Body of value1
   } break; 
   case value2: { 
      //Body of value2 
   } break; 
   .
   .
   .
   default: { 
      //Body of default case  
   } break; 
} 

*/

void main() {
  // in dart we don't to add Break after switch case the the case is not empty.
  // which means is we are not doing some operation in case (not even a basic print) then for that empty cast we need to add break.
  //value inside case is case sensitive.

  String str = "Hi";

  switch (str) {
    case "Hi":
      print("$str dart");

    case "Hello":
      print("$str world");

    default:
      print("Not matched with any case");
  }

//
// Add two condition in case
//

  int age = 20;

  switch (str) {
    case "Hi" when age >= 20:
      print("$str Your age is : $age"); //op : Hi Your age is : 20

    default:
      print("not matched");
  }
}
