void main() {
  //here Cookie is default constructor
  //
  //printing values from class by creating instance of the class
  //
  print(Cookie().size); // here "Cookie() is an instance of the Class itself"
  print(Cookie().shape);

  // in above 2 print , we created instance of the class 2 times, which takes more resources
  // Instead we can create object of the class once and use it again and again;

  Cookie cke = Cookie(); // here we created object of the class
  //cke is the name of the variable/object and Cookie is type of variable (like int, float),
  //instead of Cookie we can also use final datatype and dart will understand that automatically

  print(cke.shape);
  // using object of the class to access the variable inside the class.
  cke.baking();
  cke.cooling();

/*
  object used as a variable is important because if we directly use "Cookie()" instance , and made change in variable , then used instance to 
  print that variable it wont works , because every time we write that instance , we are creating new instance which fetches the original data from
  class

eg: check code below
*/

  print(Cookie().size); //op - 5
  Cookie().size = 20;
  print(Cookie().size); // op -5
  // op didn't changed cos we are creating new instance every time and not storing it to any variable/object.
}

//class
//class naming conventions uses PascalCasing not camelCasing

class Cookie {
  //Note: can't use "print" inside a class it needs to be inside a function of the class unless the class in an abstract class

  //variable
  String shape = 'circle';
  int size = 5; //cm

//method (its generally called method when its inside a class otherwise its a called a function)
  void baking() {
    print('Baking under process');
  }

  void cooling() {
    print('cooling under process');
  }
}
