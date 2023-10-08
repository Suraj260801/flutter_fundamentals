import 'package:flutter/material.dart';
import 'package:research/adapter/adapter.dart';
//Structural Design Patterns
//1.Adapter
//2.Composite
//3.Bridge
//4.Decorator
//5.Proxy
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  PostAPI postAPI=PostAPI();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
      body: ListView.builder(itemBuilder: (context,index){

        Post post=postAPI.getPosts()[index];
        return ListTile(title: Text(post.title),subtitle: Text(post.bio),);
      },itemCount: postAPI.getPosts().length,),
    );
  }
}
