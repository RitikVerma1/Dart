void main() {
  final item = Stud("ef");

  List<Stud> lst = [Stud("ab"), Stud("cd"), item];

  print(lst);

  //   update existing list

  lst[1] = Stud("gh");
  // we cant use this method for adding new thing , eg if on index 3 we try to
//add something it will thing we are trying to replace on index 3, since that index is
// empty it will show error
  print(lst);

// Add to the list

  lst.add(Stud("ij"));
  print(lst); // Stud type variable declared above

  // insert to specific location

  lst.insert(0, Stud("new")); // 0 is index
  print(lst);

  //remove specific element

  lst.remove(item);

  /* we cant use 
  lst.remove(Stud("ab")));  
  
  because when we use above instance in remove it creating new instance as expected
  so (Stud("ab")) is not same in remove and lst coz they are 2 diff instance
  thats why we used "item" , which has the  Stud("ef");
   */

  // list reverse method
  print(lst.reversed);
}

class Stud {
  String name;
  Stud(this.name);

  @override
  String toString() => "Name : $name";
}
