import 'package:flutter/cupertino.dart';

@immutable
class Person2 {
  final String name;
  final String lastName;
  final int age;

  const Person2({required this.name, required this.lastName, required this.age});


  Person2 clone()=>Person2(name: name, lastName: lastName, age: age);

  Person2 copyWith({String? name,String? lastName, int? age}){
      return Person2(name: name??this.name, lastName: lastName??this.lastName, age: age??this.age);
  }
}

