import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:research/pages/page2.dart';
import 'package:research/pages/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      routingCallback: (routing){
        if(routing?.current=='/'){

          Get.snackbar('Welcome To Page2', 'Good Morning');
        }
      },
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage(title: 'Page1')),
        GetPage(name: '/page2', page: () =>  Page2()),
        GetPage(name: '/page3', page: ()=>const Page3())
      ],
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
        title: const Text('Testing'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              Map<String,String> person={'name':'Suraj','lastName':'Surya'};
              await Get.toNamed('/page2',parameters: person);
            },
            child: const Text('Page2 ->')),
      ),
    );
  }
}
