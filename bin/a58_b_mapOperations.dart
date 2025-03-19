void main() {
  //can't have 2 simmiler keys
  Map<String, int> marks = {"student1": 20, "student2": 35, "student3": 50};

  print(marks);

  //updating map
  marks["student1"] = 25;
  // if "student1" key doesn't exost it will add that to map
  print(marks);
  // add to map

  marks["student0"] = 40;
  // since no such key "student0" exist, it will add it to the end of the map
  print(marks);

  // adding using adAll()

  marks.addAll({"Student4": 55, "Student5": 56, "Student6": 58});
  print(marks);

  // store another map in one map

  Map<String, int> marks2 = {"new1": 33, "new2": 44};

  marks.addAll(marks2); // adding new map into older map
  print(marks);

  //removing from a map, just need key
  marks.remove("student1");
  print("removed student $marks");
}
