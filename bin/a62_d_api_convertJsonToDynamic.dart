// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   var url = Uri.http('jsonplaceholder.typicode.com', 'users/1');

//   http.get(url).then((val) {
//     // print(jsonDecode(val.body)['name']);

//     var users = jsonDecode(val.body);
//     print(users[2]['name']);

//     users.forEach((key, val) {
//       print(val);
//     });
//   });

//
// }

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   var url = Uri.http('jsonplaceholder.typicode.com', 'users/1');

//   http.get(url).then((val) {
//     var user = jsonDecode(val.body); // This is a single user (Map)

//     print('All fields of user with ID 1:');
//     user.forEach((key, value) {
//       print('$key: $value');
//     });
//   });
// }

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  var url = Uri.http('jsonplaceholder.typicode.com', 'users');

  http.get(url).then((val) {
    var users = jsonDecode(val.body);

    // --- Part 1: Print key-value pairs of user with ID 1 ---
    //print('--- User with ID 1 ---');
    var user1 = users.firstWhere((user) => user['id'] == 1);
    user1.forEach((key, value) {
      //print('$key: $value');
    });

    // --- Part 2: Print key-value pairs for all users ---
    print('\n--- All Users ---');
    users.forEach((user) {
      print('\nUser ID: ${user['id']}');
      user.forEach((key, value) {
        print('$key: $value');
      });
    });
  });
}
