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

/* import 'package:http/http.dart' as http;
import 'dart:convert';

/// A simple application that fetches and displays user data from JSONPlaceholder API
void main() async {
  try {
    final users = await fetchUsers();
    
    // Display the user with ID 1
    displaySingleUser(users);
    
    // Display all users
    displayAllUsers(users);
  } catch (error) {
    print('Error: ${error.toString()}');
  }
}

/// Fetches user data from the JSONPlaceholder API
/// 
/// Returns a List of user objects or throws an exception if the request fails
Future<List<dynamic>> fetchUsers() async {
  // Define the API endpoint using HTTPS for security
  final url = Uri.https('jsonplaceholder.typicode.com', 'users');
  
  try {
    final response = await http.get(url);
    
    // Check if the request was successful
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List;
    } else {
      throw Exception('Failed to fetch users. Status code: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Network error: ${error.toString()}');
  }
}

/// Displays details for the user with ID 1
void displaySingleUser(List<dynamic> users) {
  print('\n=== User with ID 1 ===');
  
  final user1 = users.firstWhere(
    (user) => user['id'] == 1,
    orElse: () => null,
  );
  
  if (user1 != null) {
    printUserDetails(user1);
  } else {
    print('User with ID 1 not found.');
  }
}

/// Displays details for all users in the list
void displayAllUsers(List<dynamic> users) {
  print('\n=== All Users ===');
  
  for (final user in users) {
    print('\nUser ID: ${user['id']}');
    printUserDetails(user);
  }
}

/// Recursively prints all fields of a user, including nested objects
/// 
/// [userData] - The user data map to print
/// [indentLevel] - The current indentation level for formatting nested objects
void printUserDetails(Map<dynamic, dynamic> userData, [int indentLevel = 0]) {
  final indent = '  ' * indentLevel;
  
  userData.forEach((key, value) {
    if (value is Map) {
      print('$indent$key:');
      printUserDetails(value, indentLevel + 1);
    } else if (value is List) {
      print('$indent$key:');
      _printList(value, indentLevel + 1);
    } else {
      print('$indent$key: $value');
    }
  });
}

/// Helper function to print list items with proper formatting
void _printList(List items, int indentLevel) {
  final indent = '  ' * indentLevel;
  
  for (var i = 0; i < items.length; i++) {
    final item = items[i];
    
    if (item is Map) {
      print('$indent- Item ${i + 1}:');
      printUserDetails(item, indentLevel + 1);
    } else {
      print('$indent- $item');
    }
  }
}
*/