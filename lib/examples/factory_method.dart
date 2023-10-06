abstract class Employee {
  work();

  factory Employee(String type) {
    switch (type) {
      case "programmer":
        return Programmer();
      case "tester":
        return Tester();
      default:
        return Programmer();
    }
  }
}

class Programmer implements Employee {
  @override
  work() {
    print("Does Coding");
  }
}

class Tester implements Employee {
  @override
  work() {
    print("Tests Code");
  }
}
