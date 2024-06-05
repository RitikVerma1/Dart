// Constructor definition: Constructors are special methods that are automatically invoked when an object is instantiated

// below is a parameterized constructor

void main() {
  Cookie cke = Cookie(null, 10); // passing the positional parameter
  print(cke.shape);
  print(cke.size);
}

//class name uses PascalCase
class Cookie {
  //nullable variable
  String? shape;
  double? size;

//creating a constructor ,constructor name should be same as class name
// a syntax of constructor looks exactly like a function because its a special type of function but still a function.

  Cookie(this.shape, this.size) {
    print(this);
    //op:Instance of 'Cookie'    //"this" keyword give te access of the current class.
    //If we don't use "this" is parameter the dart will think "shape" and "size" is a dynamic variable. (vid 35).
    method1();
    //print();
  }

  //if we don't call method inside a constructor we don't need to use "{}" instead we can just end the code with ";".
  //eg:
  //Cookie(this.shape , this.size);

  void method1() {
    print("Method 1 called");
  }

  void method2() {
    print("Method 2 called");
  }
}
