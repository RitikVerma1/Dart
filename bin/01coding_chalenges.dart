void main() {
  animal ani = animal(name: "tiger");
}

class animal {
  String name;

  animal({required this.name}) {
    void prinntInfo() {
      print(name);
    }

    prinntInfo();
  }
}
