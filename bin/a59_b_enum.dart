//enums are globally declared

enum CareerOptions {
  dataScientist,
  softwareDev,
  gameDev;
}

//
void main() {
  final employee1 = Career("AB", CareerOptions.dataScientist);
  final employee2 = Career("AB", CareerOptions.softwareDev);
  final employee3 = Career("AB", CareerOptions.gameDev);

//  print(employee3.employeeNameDesignation())

  employee3.fn(); //op gamedev
}

class Career {
  final String name;
  final CareerOptions careerOptions;

  Career(this.name, this.careerOptions);

  void employeeNameDesignation() {
    print("$name : $careerOptions");
  }

  void fn() {
    switch (careerOptions) {
      case CareerOptions.dataScientist:
        print("datascientist");

      case CareerOptions.gameDev:
        print("gamedev");

      case CareerOptions.softwareDev:
        print("software dev");
    }
  }
}
