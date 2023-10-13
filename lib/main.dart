import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:research/network/http_api_call.dart';

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
        body: FutureBuilder<Either<String, List<Post>>>(
          future: getPosts(),
          builder: (BuildContext context,
              AsyncSnapshot<Either<String, List<Post>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final data = snapshot.data!;
              return data.fold(
                (error) => Center(child: Text('Error: $error')),
                (posts) => ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(posts[index].title!),
                      subtitle: Text(posts[index].body!),
                    );
                  },
                ),
              );
            }else {
              return const Center(child: Text('Unknown error occurred.'));
            }
          },
        ));
  }
}
