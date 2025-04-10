// in list you can pass a map and vice-versa

void main() {
  //regular map
  Map<String, int> Stud1marks = {"sub1": 20, "sub2": 23, "sub3": 30};

  //a list of Map where Map is of type String, int.
  List<Map<String, int>> marks = [
    {"sub1": 24, "sub2": 33, "sub3": 32},
    {"sub1": 21, "sub2": 22, "sub3": 33},
    Stud1marks,
  ];

  //loop through List uning .map() it is iterating through all the maps
  //and returns iterable which is lazy loading so we need to convert it to list

  //here e is ....    Map<String, int> e    .... because aur Map is of this type.
  /*
  marks.map((e) {
    print(e); //it won't print anything coz its returning iterable
  }).toList(); // 
  
  */

//here .map() is an darts function
//key , val is dynamic variable which in this case is String , int coz our Map is of that type

  marks.map((e) {
    e.forEach((key, val) {
      print("$key $val");
    });
  });

/*
map() applies the function to each element of lst, which prints each map.

toList() forces execution by converting the result into a list.

The new list is not stored, but the prints inside map() still run.

Why Does print(e); Work?
Even though it's inside map(), print(e); 
runs immediately for each element during iteration.
 */
}
