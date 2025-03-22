//Mixins are used to add functionality to classes without having to use inheritance
// that's why there is no need to have parents or superclass and child relation is there in class. it does't have class hierarchy.
// unlike inheritance we can use more that 1 mixin class in 1 class.

mixin First {
  int a = 20;
  void printValue() {
    print(a);
  }
}

mixin Second {
  int b = 1;
  void printValue() {
    print(b);
  }
}

//multiple mixin
class Third with First, Second {
  //** */
  //Dart does not allow overriding mixin variables (fields) directly in a class.
  // The only way to change a mixin's variable in the subclass is to use a getter.
  @override
  int get b => 0; // Overrides the mixin's variable

//functions can be override directly
  @override
  void printValue() {
    print(a * b);
  }
}

//mixin class
mixin class Four {
  int d = 4;
  void printValue() {
    print(d);
  }
}

class Five with Four {
  int f = 1;
  @override
  void printValue() {
    print(d * f);
  }
}

void main() {
  Third cons = Third();
  cons.printValue();

  Five fi = Five();
  fi.printValue();
}
