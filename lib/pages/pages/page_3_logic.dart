import 'package:fluttersample/common/routers/router_argument_key.dart';
import 'package:get/get.dart';

class Page3Logic extends GetxController{
  var argument = "".obs;
  @override
  void onReady() {
    super.onReady();
    argument.value = Get.arguments[RouterArgumentKey.Argument1];
  }
}