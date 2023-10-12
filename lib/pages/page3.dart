import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:research/logger.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
   String? args=Get.arguments;
   Logs.print(args);
    return Scaffold(
      appBar: AppBar(title: const Text('Page3')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {Get.back();}, child: const Text('<- Go Back')),
          ],
        ),
      ),
    );
  }
}
