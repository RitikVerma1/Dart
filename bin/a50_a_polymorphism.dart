// polymorphism means an ability of an object to take many form, here instance of the class took 2 forms,
//first we assign it to Cat() class then Dog() class.
// because cat is an animal type and Dog() and Cat() extending animal/

//dart only allows method overriding(@override) not overloading
void main() {
  Animal cat = Cat(); //Polymorphism: Parent class reference, child class object
  cat.sound();
  cat = Dog();
  cat.sound();
}

class Animal {
  void sound() {
    print(' Animal making sound');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat making sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('dog making sound');
  }
}
