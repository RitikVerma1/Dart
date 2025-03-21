void main() {
  Mammals ml = Mammals();
  ml.setupAnimal("rabbit", 30);
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
    print("checking survival chance for $speciesName");
    super.SurvivalChance();
  }
}
