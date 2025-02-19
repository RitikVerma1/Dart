void main() {
  Child ch = Child();

  print(ch.surname);
  ch.lifeCalulator();
}

class GrandFather {
  String surname = "verma";
  bool diabetesHistery = false;

  double lifeExpectancyMultiplier = 1.1;
  double lifeExpectancy = 60;

  void lifeCalulator() {
    lifeExpectancy = lifeExpectancy * lifeExpectancyMultiplier + 230;
    print(lifeExpectancy);
  }
}

class Father extends GrandFather {
  @override
  void lifeCalulator() {
    lifeExpectancy = lifeExpectancy * lifeExpectancyMultiplier + 1140;
    print(lifeExpectancy);
  }
}

class Child extends Father {
  double lifeExpectancyMultiplier = 10000.1;
}



/*

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

*/