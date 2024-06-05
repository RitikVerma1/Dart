// named constructor are a constructor with named argument

// immutable classes are those where the variable of the class cant change by outside , or once passed in argument via constructor it can't change

void main() {
  Cookie(shape: "box", size: 2);
  // Cookie.shape = "box";   //because its final we can't change
}

class Cookie {
  final String? shape;
  final double? size;

  Cookie({required this.shape, required this.size}) {
    method1();
  }

  method1() {
    print("shape is :$shape");
    print("size is :$size");
  }
}
