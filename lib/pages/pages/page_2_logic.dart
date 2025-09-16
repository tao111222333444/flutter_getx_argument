import 'package:fluttersample/common/routers/router_argument_key.dart';
import 'package:get/get.dart';

class Page2Logic extends GetxController{
  var parameters = "".obs;

  @override
  void onReady() {
    super.onReady();
    parameters.value = Get.parameters[RouterArgumentKey.Argument1]??"";
  }
}