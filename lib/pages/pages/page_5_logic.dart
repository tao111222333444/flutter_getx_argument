import 'package:fluttersample/common/routers/router_argument_key.dart';
import 'package:get/get.dart';

class Page5Logic extends GetxController{
  var argument = "".obs;
  var parameters = "".obs;
  @override
  void onReady() {
    super.onReady();
    argument.value = Get.arguments[RouterArgumentKey.Argument1];
    parameters.value = Get.parameters[RouterArgumentKey.Argument1]??"";
  }
  }