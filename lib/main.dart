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
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(),
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: AspectRatio(
              //h=200 because w=infinity
              //w=200*16/9=355.5<411.4(device width)
              aspectRatio: 2,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(),
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: AspectRatio(
              //h=200 because w=infinity
              //w=200*16/9=600>411.4(device width)
              //w=411.4(max allowed from parent)
              //height=411.4/3=137.3
              aspectRatio: 3,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(),
            width: 150,
            height: 150,
            color: Colors.blue,
            child: AspectRatio(
              //w=150 because w=fixed&&<deviceWidth
              //h=150/2=75<(device height)
              aspectRatio: 2,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
