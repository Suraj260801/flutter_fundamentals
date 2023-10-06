import 'package:flutter/material.dart';
import 'package:research/examples/factory_method.dart';
import 'package:research/examples/factory_method2.dart';
import 'package:research/flutter_factory/button_factory_method.dart';

void main() {
  late Employee emp = Employee('programmer');
  emp.work();
  Creator productCreatorA = ProductCreatorA();
  Product productA = productCreatorA.createProduct();
  productA.display();
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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Testing'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlatformButton(TargetPlatform.android).build(() {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    'Android button clicked',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  backgroundColor: Colors.green,
                ));
              }, const Text("Android")),
              PlatformButton(TargetPlatform.iOS).build(() {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Android button clicked'),
                  backgroundColor: Colors.red,
                ));
              }, const Text("Ios"))
            ],
          ),
        ),
      ),
    );
  }
}
