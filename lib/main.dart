import 'package:flutter/material.dart';

void main() {
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
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: FractionallySizedBox(
          alignment: FractionalOffset.center,
          widthFactor: 0.8,
          heightFactor: 0.8,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      color: Colors.green,
                    ),
                    Container(
                      width: 300,
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      width: 300,
                      height: 200,
                      color: Colors.yellow,
                    )
                  ],
                ),
              )
             
            ],
          ),
        ),
      ),
    );
  }
}
