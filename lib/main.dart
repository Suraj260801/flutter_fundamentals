import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:research/controller/counter_controller.dart';
import 'package:research/pages/NewPage.dart';

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

  final CounterController controller = Get.put(CounterController());
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => Text(
                          '${controller.count}',
                          style: const TextStyle(fontSize: 40),
                        )),
                    ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(100, 50))),
                      onPressed: controller.increment,
                      child: const Text(
                        '+',
                        style: TextStyle(fontSize: 40),
                      ),
                      onHover: (hover) {},
                    ),
                  ],
                )),
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: () async => await Get.to(const NewPage()),
                      child: const Text('Page2'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
