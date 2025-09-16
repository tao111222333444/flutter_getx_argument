import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersample/pages/pages/page_1_logic.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  final logic = Get.put(Page1Logic());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("page 1"),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      extendBodyBehindAppBar: false,
      body: Center(
        child: Container(
          child: Obx(() {
            return Text(logic.argument.value, style: TextStyle(color: Colors.black));
          }),
        ),
      ),
    );
  }
}