import 'package:flutter/material.dart';
import 'package:fluttersample/common/language/language_key.dart';
import 'package:fluttersample/pages/splash/splash_logic.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget{

  SplashPage({Key? key}):super(key:key);

  var logic = Get.find<SplashLogic>();
  @override
  Widget build(BuildContext context) {
     return Material(
       //添加 Material  or Scaffold  不是会出现ui 风格不对的问题
       child: Container(
           height: Get.height,
           width: Get.width,
           decoration: const BoxDecoration(
             gradient: LinearGradient(colors: [
               Color(0xffFFF5FC),
               Color(0xffFFCDF1),
             ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
           ),
         child: Stack(
           children: [
             Positioned(
                 right: 10,
                 top: 60,
                 child: Obx(
             ()=> Text(logic.down.value.toString(),style: const TextStyle(fontSize: 16,color: Colors.black),))),
             Center(child: Text(LanguageKey.SplashKey.tr,style: const TextStyle(fontSize: 16,color: Colors.black),)),
           ],
         ),
       ),
     );
  }
}