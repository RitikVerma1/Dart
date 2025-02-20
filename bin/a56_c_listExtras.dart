void main() {
  final item = Stud("ef");

  List<Stud> lst = [Stud("ab"), Stud("cd"), item];
}

class Stud {
  String name;
  Stud(this.name);

  @override
  String toString() => "Name : $name";
}
