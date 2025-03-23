void main() {
  final item = Stud("ef");

  List<Stud> lst = [Stud("ab"), Stud("cd"), item];
  for (int i = 0; i < lst.length; i++) {
    print(lst[i]);
  }
}

class Stud {
  String name;
  Stud(this.name);

//overriding the default messge when we call instance of a class
  @override
  String toString() => "Name : $name";
}
