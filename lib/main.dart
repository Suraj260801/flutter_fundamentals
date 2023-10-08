import 'package:flutter/material.dart';
import 'package:research/Test.dart';
import 'package:research/builder/builder.dart';

void main() {
  Test1 t=Test1('a', 'b', 1);
  print(t.name);
  //Problem Occurs when I dont want to send some arguments stiil I have to pass ''.
  Test1 t12=Test1('a','',0);
  
  //Using Builder Class
  TestBuilder builder=TestBuilder();
  builder.name='Suraj';
  Test2 t2=Test2(builder);         //Here we need not to pass all args
  print(t2.name);
  print(t2.lastName);

  //Without creating builder class
  Test3 t3=Test3(name: 'ram', lastName: 'shyam', age: 22);

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
