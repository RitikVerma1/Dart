import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.http('jsonplaceholder.typicode.com', '/users');

  try {
    var response = await http.get(url);

    print("Raw JSON data:");
    print(response.body);

    var decoded = jsonDecode(response.body);

    // Using forEach to loop through the list of users
    decoded.forEach((user) {
      print("\nUser:");
      user.forEach((key, val) {
        print("$key : $val");
      });
    });
  } catch (e) {
    print("Error: $e");
  }
}
