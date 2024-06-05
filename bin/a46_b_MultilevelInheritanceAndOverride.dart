// void main() {
//   Myself self = Myself();
//   self.lifeExpectancyCalculate();
// }

// class GrandFather {
//   String LastName = "verma";
//   int lifeExpectancy = 80;
// }

// class Father extends GrandFather {
//   void lifeExpectancyCalculate() {
//     lifeExpectancy += 10;
//     print("age expectancy is $lifeExpectancy");
//   }
// }

// class Myself extends Father {
// @override
//   void lifeExpectancyCalculate() {
//     lifeExpectancy += 5;
//     print("age expectancy is $lifeExpectancy");
//   }
// }

//code from chat gpt below
void main() {
  Myself self = Myself();
  self.lifeExpectancyCalculate();
}

class GrandFather {
  String lastName = "Verma";
  int lifeExpectancy = 80;
}

class Father extends GrandFather {
  void lifeExpectancyCalculate() {
    lifeExpectancy += 10;
    print("Age expectancy after Father adjustment is $lifeExpectancy");
  }
}

class Myself extends Father {
  @override
  void lifeExpectancyCalculate() {
    // First, call the superclass method to apply its logic
    super.lifeExpectancyCalculate();
    // Then, apply the additional logic for Myself
    lifeExpectancy += 5;
    print("Age expectancy after Myself adjustment is $lifeExpectancy");
  }
}


/* 
void main() {
  Dog dog = Dog();
  dog.makeSound();
}

class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

*/
