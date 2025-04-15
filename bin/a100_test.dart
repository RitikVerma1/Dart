import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');

  try {
    final data = await http.get(url);

    print(data.body);
  } catch (e) {
    print('error occurred: $e');
  }
}
