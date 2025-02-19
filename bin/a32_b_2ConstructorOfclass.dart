void main() {
  Cookie cke1 = Cookie("circle", 5); // Calls the default constructor
  Cookie cke2 = Cookie.square(size: 10); // Calls the named constructor
  Cookie cke3 = Cookie.defaultCookie(); // Calls another named constructor

  print("Cookie 1: Shape = ${cke1.shape}, Size = ${cke1.size}");
  print("Cookie 2: Shape = ${cke2.shape}, Size = ${cke2.size}");
  print("Cookie 3: Shape = ${cke3.shape}, Size = ${cke3.size}");
}

class Cookie {
  String shape;
  int size;

  // Default constructor
  Cookie(this.shape, this.size);

  // Named constructor for square cookies
  Cookie.square({required int size}) {
    this.shape = "square";
    this.size = size;
  }

  // Named constructor for a default cookie
  Cookie.defaultCookie()
      : shape = "circle",
        size = 6; // Initializer list
}
