import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:research/pages/page3.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  final Logger log = Logger();

  @override
  Widget build(BuildContext context) {
    final String arguments = Get.arguments as String;
    log.d(arguments);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Page2'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.back<String>(result: 'Success'),
              child: const Text(
                '<- Go Back',
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () async => await Get.off(const Page3()),
                child: const Text(
                  'Page3 ->',
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
