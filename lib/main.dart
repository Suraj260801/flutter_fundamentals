import 'package:flutter/material.dart';
import 'package:research/singleton/Singleton3.dart';
import 'package:research/singleton/singleton1.dart';
import 'package:research/singleton/singleton2.dart';

void main() {
  Singleton1 singleton1=Singleton1.getInstance();
  Singleton2 singleton2=Singleton2.instance;
  Singleton3 singleton3=Singleton3();
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
