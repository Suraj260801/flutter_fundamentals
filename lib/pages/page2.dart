import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});
  final Logger log=Logger();
  @override
  Widget build(BuildContext context) {
    final String? name=Get.parameters['name'];
    final String? lName=Get.parameters['lastName'];
    log.d(name);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('Page2')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {Get.back();}, child: const Text('<- Go Back')),
            ElevatedButton(onPressed: () async {await Get.offNamed('/page3',arguments: 'Success');}, child: const Text('Page 3 ->')),

          ],
        ),
      ),
    );
  }
}
