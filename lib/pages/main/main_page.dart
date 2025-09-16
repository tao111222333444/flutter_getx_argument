import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttersample/common/language/language_key.dart';
import 'package:fluttersample/pages/main/main_logic.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}):super(key:key);

  var logic = Get.find<MainLogic>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.deepPurple.shade200,
        title: Text(LanguageKey.MainTitleKey.tr),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ) ,
      extendBodyBehindAppBar: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: (){
                    logic.toPage1();
                  },
                  child: const Text("arguments 传参",style: TextStyle(color: Colors.black) ,
                )),
                OutlinedButton(
                    onPressed: (){
                      logic.toPage2();
                    },
                    child: const Text("parameters 传参",style: TextStyle(color: Colors.black) ,
                    )),
                OutlinedButton(
                    onPressed: (){
                      logic.toPage3();
                    },
                    child: const Text("同时打开两个页面并且第一个打开页面传参了,第一个页面收不到传参的问题",style: TextStyle(color: Colors.black) ,
                    )),
                OutlinedButton(
                    onPressed: (){
                      logic.toPage4();
                    },
                    child: const Text("通过ParamManager 解决问题 page 3 的问题",style: TextStyle(color: Colors.black) ,
                    )),
                ],
            ),
          ),
        ),
      ),
    );
  }



}
