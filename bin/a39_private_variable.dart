// Private Variable in dart is a variable which can't be accessed from outside of its dart file

// it uses Underscore before the variable name

void main() {
  Cookie cke = Cookie("vanilla");

  Cookie("chocolate");
}

class Cookie {
  String _flavor;

  Cookie(this._flavor) {
    printFlavor();
  }

  void printFlavor() {
    print("Flavor is $_flavor");
  }
}


/*
void main() {
  Cookie cke = Cookie(); // Create a Cookie object with the default flavor

  Cookie("chocolate"); // Create another Cookie object with the flavor "chocolate"
}

class Cookie {
  String _flavor;

  Cookie([this._flavor = "vanilla"]) { // Default flavor is "vanilla"
    printFlavor();
  }

  void printFlavor() {
    print("Flavor is $_flavor");
  }
}
*/