// map is collection of key value pair , where each collection is unique

void main() {
  //dynamic map
  Map marks = {"Student1": 20, "Student2": 25, "Student3": 34};

  print(marks);

  print(marks["Student1"]); //passing key

  mapTwo().printIt();
}

class mapTwo {
  // here inside <> it could be any datatype or class
  Map<String, int> height = {"Student1": 165, "Student2": 185, "Student3": 174};

  void printIt() {
    print(height["Student1"]?.isEven);
    // ? is used coz "Student1" could have null, we can also use ! if we are sure its not null.
    // is we used ! for a key that does't exist it will compile but give runtype error thats why used ?

    //or using type cheking using loop

    if (height["Student2"] == null) {
      print("key does't exist");
    } else {
      print(height["Student2"]!.isEven);
      // we used ! because at this stage of loof we for shure know its not null.
    }
  }
}
