import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users');

  try {
    final data = await http.get(url);

//    print(data.body);

    var decodedData = jsonDecode(
        data.body); //it will decode json in List(since our api is list)
    print(decodedData[0]['name']);
    // json has list of maps, 0 is the 0th index of the list (in this index there is a map), and 'name' is one of the key in map
  } catch (e) {
    print('error occurred: $e');
  }

  http.get(url).then((val) {
    //print(val.body);
  }).catchError((err) {
    print("this error occurred: $err");
  });
}
