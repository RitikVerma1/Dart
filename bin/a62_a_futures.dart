// Future is basically a class which represent that a function or some computation may complete in the future,
//and this will produce a result or an error

//it won't block execution of other code while its waiting for execution.

//It is related to Asynchronous programming, which allows to perform task concurrently without breaking the execution

/*
declaring an Future

?     Future <String> giveResultAfterTwoSec() async {} 
(?  is because coloring above line of code using "colorful color" extensions)

here future will return "String"  , by default is <T> generics which is dynamic by default
async because its an asynchronous function

*/

//void main() {
//Future<String> giveResultAfterTwoSec() async {
//    return "hey!!";
//  }

/* 
  also be declared as

 Future<String> giveResultAfterTwoSec() {    // without using async , directly returning Future from return
    return Future((){
    return "hey!!";})
  }   
  * here we are returning future which is a class that has a function inside
  * no need for async here , async we use so that we can use await.


  */
//}
//
//
//
// why just calling Future function won't work, because it returns instance of Future, unless we use await
//
//

/*
//since we added async to void main() and async function required to be Future, shiuldn't we add Future void main() async{},  
//Future not necessery before void (you can add but not required)
//you can write Future <void>....  , but not necessary 
void main() async {
  //async coz the await expression can only be used in an async function.
  print("Line 1");
  final result = await giveResultAfterTwoSec(); //
  print(result);
  // op: Instance of 'Future<String>'    // coz the future function is returning Future string, and we havn't used await
}

Future<String> giveResultAfterTwoSec() {
  // this function is returning a Future String
  return Future(() {
    return "Hey !!! from Future";
  });
}


*/

// void main() async {
//   print("line1");
//   final result = await giveResultAfterTwoSec();
//   // await stops further execution , after delay , line 3 will print
//   print(result);
//   print("line 3");
// }

// // we can write async here or just write in return before {}
// // by marking a function async , we allow use of await
// Future<String> giveResultAfterTwoSec() async {
//   //return ("Hey !!!! from Future");
//   return Future.delayed(Duration(seconds: 2), () {
//     return ("Hi");
//   });
// }

//

//
// instead of using async and await in main() we can use .then

void main() {
  print("line1");

//this .then() will let "line1" and "line 3" to get prited and after 2 seconds val will get printed.
  giveResultAfterTwoSec().then((val) {
    //val is variable which stored the return value from Future function. return value from future fnction.

    // we don't need async since we are not using await,
    print(val);
  });

  print("line 3");
}

Future<String> giveResultAfterTwoSec() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Hi from Future";
  });
}
