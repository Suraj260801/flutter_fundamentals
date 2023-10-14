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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(

          children: [
            Container(
              width: 300,
              height: 100,
              color: Colors.lightBlue,
              child: const FittedBox(
                  fit: BoxFit.fill, child: Text('asdfghjklcvbnmfghjghjcghj')),
            ),
            const Divider(thickness: 1,),
            Container(
              width: 300,
              height: 300,
              color: Colors.lightBlue,
              child: FittedBox(
                  fit: BoxFit.fitHeight, child: Image.asset('assets/images/giyu.png'))),
          ],
        ),
      ),
    );
  }
}
