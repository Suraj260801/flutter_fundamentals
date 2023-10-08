import 'package:flutter/material.dart';
import 'package:research/prototype/prototype_immutable.dart';
import 'package:research/prototype/prototype_mutable.dart';

void main() {
  Person person1=Person(name: 'Suraj', lastName: 'Suryawanshi', age: 22);
  person1.name="Ram";         //Mutable instance variable
  Person person12=person1.clone();
  person12.name='Suresh';     //Mutable instance variable
  print(person1.name);
  print(person12.name);

  Person2 person2=const Person2(name: 'Lakhan', lastName: 'Shyam', age: 23);
  Person2 person22=person2.clone();
  //person2.name='Rohit';        Not allowed because object is immutable
  //person22.name='Rohit';       Not allowed because object is immutable

  //immutable class copyWith method to achieve mutability
  person2=person2.copyWith(name: 'Rashi');
  Person2 person23=person2.copyWith(name: 'Shri');

  print(person2.name);
  print(person23.name);
  print(person23.lastName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
    );
  }
}
