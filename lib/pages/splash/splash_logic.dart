import 'dart:async';

import 'package:fluttersample/common/routers/router_pages.dart';
import 'package:get/get.dart';

class SplashLogic extends GetxController{

  var down = 5.obs;

  @override
  void onReady() {
    super.onReady();
    Timer.periodic(Duration(seconds:1),(i){
      down.value = --down.value;
      if(down.value <= 0){
        Get.offNamed(RouterPages.main);
        i.cancel();
      }
    });
  }
}