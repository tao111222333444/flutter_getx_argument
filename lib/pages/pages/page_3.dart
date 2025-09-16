import 'package:flutter/material.dart';
import 'package:fluttersample/pages/pages/page_3_logic.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget{
  final logic = Get.put(Page3Logic());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("page 3"),
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