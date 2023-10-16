import 'package:flutter/material.dart';
import 'package:research/views/login_page.dart';

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
      home: Scaffold(body: Container(
          decoration: const BoxDecoration(
              gradient:
              LinearGradient(colors: [Color(0xFFcfd9df), Color(0xFFe2ebf0)])),
          child: const LoginPage()
      )),
    );
  }
}
