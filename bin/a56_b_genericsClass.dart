void main() {
  Student std = Student("Name is xyz");
  // can also be written as ( Student std = Student <string> ("name is xyz")).
  print(std.data);
  print(std.data.runtimeType);

  std.PrintData();
}

//here T like a placeholder for datatype, can be any alphabet
//instead of T we can use any datatype also, but that only accept that datatype
/*we used T instead of any datatype like String etc, because now it can accept any datatype
and make the variable of that type, so if we pass int here the variable "data" become an integer type

its like dynamic but with the functionality that dynamic misses. like typechecking etc.
*/
class Student<T> {
  // class Student of type T  , T is just convention not strictly needed, it can be any alphabets
  final T data; //final not necessary
  Student(this.data);

  void PrintData() {
    print("Data is : $data");
  }
}

/*Extra Must revise  <T,A>

void main() {
  List<Students> stud = [
    Students(23, 20),
    Students("Stu2", 21),
    Students("Stu3", 19)
  ];

  print(stud);

  print(stud[0].runtimeType);
}

class Students<T, A> {
  final T name;       // or just Tname;
  final A age;        // final not required

  Students(this.name, this.age);

  @override
  String toString() => "$name : $age";
}


*/
