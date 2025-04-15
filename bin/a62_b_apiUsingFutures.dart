import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.http('jsonplaceholder.typicode.com', 'users/1');

  final result = await http.get(url);
  print(result.body);
  // this will return a string not a map , we need to convert it to map

// * using .then instead of await

  http.get(url).then((val) {
    print(val.body);
  });

//   Here's what each component does:

//* http.get(url) - This makes an HTTP GET request to the URL you specified and returns a Future object (Dart's version of a Promise)
//* .then(...) - This is a method on the Future that takes a callback function which will be executed when the Future completes successfully
//* (res) - This is the parameter of the callback function, representing the response received from the HTTP request. It's a Response object from the http package
//* { print(res.body); } - This is the function body that executes when the request completes. It accesses the body property of the response (containing the data returned from the server) and prints it to the console

//* The .then() approach handles asynchronous operations in a chain-like manner, as opposed to the more sequential-looking async/await syntax.
}
