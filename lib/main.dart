import 'package:flutter/material.dart';
import 'package:research/network/dio_api_call.dart';

import 'model/post.dart';

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
      body: FutureBuilder<List<Post>>(
        future: getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          return ListView.builder(itemBuilder: (context,index){
            final Post? post=snapshot.data?[index];
            return ListTile(title: Text('${post?.id}'),subtitle: Text('${post?.title?.substring(0,12)}'),);
          },itemCount: snapshot.data?.length,);
        },

      ),
    );
  }
}
