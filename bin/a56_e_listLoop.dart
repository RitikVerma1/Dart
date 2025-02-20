void main() {
  final item = Stud("ef", 20);

  List<Stud> lst = [Stud("ab", 30), Stud("cd", 45), item];

  print(lst);

  print(lst[0].marks);

  // loop through lst list and remove students who scores less than 40

  // 1st approach
  /*
  1.create a new empty list of Stud
  2.run a loop to chec if students marks is greather than 40
  3. if true then add that to empty list
  4. print list
  
  */

  List<Stud> newlst = [];

  for (int i = 0; i < lst.length; i++) {
    if (lst[i].marks >= 40) {
      newlst.add(lst[i]);
    }
  }
  print(newlst);

  // 2nd approach usinf for-in loop  //no hassle of indexes

  List<Stud> newlst2 = [];

  for (final stu in lst) {
    if (stu.marks >= 40) {
      newlst2.add(stu);
    }
  }
  print(newlst2);

  //3rd and best using Iterable
  //(Iterable are lazy loading, they are similer to
  // list but lacks some method like add and remove )

  final filterdLst = lst.where((lst) => lst.marks >= 40);

  print(filterdLst.toList()); // without .toList() it was returning iterable
}

class Stud {
  String name;
  final int marks;
  Stud(this.name, this.marks);

  @override
  String toString() => "Name : $name";
}
