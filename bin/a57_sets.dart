// sets is simmiler to list except is ignores all the duplicates elements
// it used {} instear of []

void main() {
  final newStudent = Students("new kid", "40");

  Set<Students> studs = {
    Students("Stu1", 20),
    Students("Stu1", 20),
    Students("Stu1", 20),
    newStudent,
    newStudent,
    newStudent
  }; //needs semicolon

  print(studs);

  // if above set was a list we can use .toSet() and print that
  // that will remove duplications
}

class Students {
  final String name;
  final marks;
  Students(this.name, this.marks);

  @override
  String toString() => "$name : $marks";
}
