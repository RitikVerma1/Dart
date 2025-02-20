/*
A final class is simmiler to sealed class that cannot be extended (inherited) or implemented by
 any other class outside the dart file, only inside classes can do that. 
 main diff is sealed class cant be instantiated(like abstract class) but final can
 final doesn't has features for switch cases like sealed class.
 This is useful when you want to create a class that should remain unchanged 
and prevent any modification by inheritance.
*/

// only base, sealed or final class can extend it not regular class.
// Defining a final class
final class AppConfig {
  final String appName = "My Flutter App";

  void displayConfig() {
    print("App Name: $appName");
  }
}

//  class Text extends AppConfig{}    // here it will give an error because a normal class can't extend final class

void main() {
  AppConfig config = AppConfig();
  config.displayConfig(); // Output: App Name: My Flutter App
}
