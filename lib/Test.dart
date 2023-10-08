import 'package:research/builder/builder.dart';

class Test1 {
  String? name;
  String? lastName;
  int? age;

  Test1(this.name, this.lastName, this.age);          //flutter approch to init instance variables
}

class Test2 {
  String ?name;
  String? lastName;
  int? age;

  Test2(TestBuilder builder) {
    name = builder.name;
    lastName = builder.lastName;
    age = builder.age;
  }

}

class Test3 {
  final String name;
  final String lastName;
  final int age;

  Test3({
    required this.name,
    required this.lastName,
    required this.age
  })


}