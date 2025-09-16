import 'package:flutter/material.dart';
import 'package:fluttersample/pages/pages/page_5_logic.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  Page5({super.key});

  final logic = Get.put(Page5Logic());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("page 5"),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      extendBodyBehindAppBar: false,
      body: Center(
        child: Container(
          child: Column(
            children: [
              Obx(() {
                return Text(logic.argument.value, style: TextStyle(color: Colors.black));
              }),
              const SizedBox(height: 20,),
              Obx(() {
                return Text(logic.parameters.value, style: TextStyle(color: Colors.black));
              }),
            ],
          ),
        ),
      ),
    );
  }
}