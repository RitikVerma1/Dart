/*

//**Abstract  */
In Dart, both abstract classes and interface help define blueprints for other classes, but they have key differences:

Abstract Class:
Can have method definitions (with a body) and method declarations (without a body).

Can have instance variables.

Cannot be instantiated directly.

A class extends (extends) an abstract class and inherits its functionality.


//**Interface */

Interface:
Dart has no separate interface keyword—every class in Dart is an interface by default,
because every class can be implemented by other class.

Interfaces only define method signatures, no implementations.

A class implements (implements) an interface, but must override all its methods.

Unlike extends, implements does not inherit any method body from the parent class.





*/
