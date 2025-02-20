// List is an ordered collection of an object
//meaning its collection of object where order matters

void main() {
  //List is an abstract class by default
  List list1 = [10, 20, 30, "Hello", 3.222]; // Dynamic list

  print(list1);
  print("${list1[2]}  ${list1[3]}"); //
  print("******************* \n");

  //list of type double
  List<double> list2 = [12, 2.22, 33.44];

  // These <> are called generics and can also be used with classes etc.

  // these <> can have class name, any datatype or <Object>  // here Object is superclass of all object in dart except null.
//

  //lets create a list of a class Student
  //in list we are using students constructor and passing 3 names
  List<Students> stud = [Students("AB"), Students("CD"), Students("EF")];
  //just like storing multiple double value in double type list here we store multiple "instance" of object of class in class type list
  // **if we remove <Student> it will be a list of dynamic and can store anything else also.
  print(stud[0]);
  // op: Instance of "Student"    // at 0th place these is an object of Student class

  print(stud[0].name);
  // op : AB      //  using object of Student at 0th position we used its property

  /*  
  above code can also be written as
    final studName = stud[1];
    print(studName.name);

  */

  //printing entire stud list
  print(stud);
  //  oP before @override in cass : [Instance of 'Students', Instance of 'Students', Instance of 'Students']
  //  oP after  @override in cass : [Student : AB, Student : CD, Student : EF]

  /* it prints instance of 'student' which is expected because in list there are constructors(insteces)
  there is a default toString() in every class which has that messege and that is getting displayed here , 
  we can @override that in class and using string interpolation we can add $name to it , using thus trick we can print the name insted of default messege  */
}

class Students {
  final String name;
  Students(this.name);

  @override
  String toString() => "Student : $name";
  // we override the default toString by dart which was printing "instance of 'Student' when we were trying to print list of class that has constructors"
  // we only modifies default return messege and aded our variable
}
