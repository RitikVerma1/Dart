void main() {
  Students newStudent = Students("newKid", 24);

  List<Students> stud = [
    newStudent,
    Students("Stu1", 18),
    Students("Stu2", 21),
    Students("Stu3", 19)
  ];

  List<Students> newStud = [];

  // for (int i = 0; i < stud.length; i++) {
  //   if (stud[i].age >= 20) {
  //     newStud.add(stud[i]);
  //   }
  // }
  // print("new student liat is $newStud");

  // for (final i in stud) {
  //   if (i.age >= 20) {
  //     newStud.add(i);
  //   }
  // }
}

class Students<T, A> {
  T name;
  A age;

  Students(this.name, this.age);

  @override
  String toString() => "$name : $age";
}
