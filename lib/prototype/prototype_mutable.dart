class Person {
  String name;
  String lastName;
  int age;

   Person({required this.name, required this.lastName, required this.age});

  Person clone()=>Person(name: name, lastName: lastName, age: age);
}

