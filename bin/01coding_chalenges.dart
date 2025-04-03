void main() {
  Map Students = {
    "marks1": 20,
    "marks2": 20,
    "marks3": 20,
    "marks4": 20,
    "marks5": 20
  };

  print(Students);
  print(Students["marks1"]);
  Students["marks1"] = 22;
  Students.addAll({"marks6": 24});
}
