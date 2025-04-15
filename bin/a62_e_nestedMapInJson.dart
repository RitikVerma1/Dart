import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  // Define the API endpoint
  var url = Uri.http('jsonplaceholder.typicode.com', 'users');

  // Fetch data from the API
  http.get(url).then((val) {
    // Decode the JSON response into a List of Maps
    var users = jsonDecode(val.body);

    // --- PART 1: Print key-value pairs of user with ID 1 ---
    print('--- User with ID 1 ---');

    // Find the user whose 'id' is 1
    var user1 = users.firstWhere((user) => user['id'] == 1);

    // Call helper function to print all fields (even nested ones)
    printUserDetails(user1);

    // --- PART 2: Print key-value pairs for all users ---
    print('\n--- All Users ---');
    users.forEach((user) {
      print('\nUser ID: ${user['id']}');
      printUserDetails(user);
    });
  });
}

/// Helper function to print all fields of a user, handling nested maps
void printUserDetails(Map user, [int indentLevel = 0]) {
  // Indentation helper for prettier formatting
  String indent = '  ' * indentLevel;

  user.forEach((key, value) {
    if (value is Map) {
      // If the value is a nested object (Map), recurse and go deeper
      print('${indent}$key:');
      printUserDetails(value, indentLevel + 1);
    } else {
      // Regular key-value pair
      print('${indent}$key: $value');
    }
  });
}


// * Professional Code below

/* 
import 'dart:convert';
import 'package:http/http.dart' as http;

/// A service class to handle user data operations with the API.
class UserService {
  static const String _baseUrl = 'jsonplaceholder.typicode.com';
  static const String _usersEndpoint = '/users';

  /// Fetches user data from the API and processes it.
  Future<void> fetchAndDisplayUsers() async {
    try {
      final users = await _fetchUsers();
      _displaySingleUser(users, userId: 1);
      _displayAllUsers(users);
    } catch (e) {
      print('Error: Failed to fetch or process user data: $e');
    }
  }

  /// Fetches user data from the API.
  Future<List<Map<String, dynamic>>> _fetchUsers() async {
    final url = Uri.http(_baseUrl, _usersEndpoint);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load users: ${response.statusCode}');
    }
  }

  /// Displays details for a single user by ID.
  void _displaySingleUser(List<Map<String, dynamic>> users, {required int userId}) {
    print('--- User with ID $userId ---');
    final user = users.firstWhere(
      (user) => user['id'] == userId,
      orElse: () => throw Exception('User with ID $userId not found'),
    );
    _printUserDetails(user);
  }

  /// Displays details for all users.
  void _displayAllUsers(List<Map<String, dynamic>> users) {
    print('\n--- All Users ---');
    for (final user in users) {
      print('\nUser ID: ${user['id']}');
      _printUserDetails(user);
    }
  }

  /// Prints user details with proper indentation for nested fields.
  void _printUserDetails(Map<String, dynamic> user, {int indentLevel = 0}) {
    final indent = '  ' * indentLevel;
    user.forEach((key, value) {
      if (value is Map) {
        print('$indent$key:');
        _printUserDetails(value.cast<String, dynamic>(), indentLevel: indentLevel + 1);
      } else {
        print('$indent$key: $value');
      }
    });
  }
}

void main() async {
  final userService = UserService();
  await userService.fetchAndDisplayUsers();
}
*/