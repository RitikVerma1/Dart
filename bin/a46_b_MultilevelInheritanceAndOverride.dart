void main() {
  // Create an instance of Mammals and set up the animal
  Mammals mammal = Mammals();
  mammal.setupAnimal("Rabbit", 30);
}

// Base class: LifeOnEarth
class LifeOnEarth {
  String? speciesName;
  int? speciesSize;

  void SurvivalChance() {
    if (speciesSize != null && speciesSize! < 50) {
      print("Survival chance less than 30% for $speciesName");
    } else {
      print("Survival chance more than 50% for $speciesName");
    }
  }
}

// Intermediate class: SmallAnimals (inherits from LifeOnEarth)
class SmallAnimals extends LifeOnEarth {
  // Method to set values and call survival check
  void setupAnimal(String name, int size) {
    speciesName = name; // Assign species name
    speciesSize = size; // Assign species size
    SurvivalChance(); // Call the inherited function
  }
}

// Derived class: Mammals (inherits from SmallAnimals)
class Mammals extends SmallAnimals {
  @override
  void SurvivalChance() {
    // Overriding the method to add extra behavior
    print("Checking survival chances for a mammal...");
    super.SurvivalChance(); // Call the original method from SmallAnimals
  }
}

//*********************************** */ */

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