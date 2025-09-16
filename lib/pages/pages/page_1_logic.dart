import 'package:fluttersample/common/entities/user.dart';
import 'package:get/get.dart';

class Page1Logic extends GetxController{

  var argument = "".obs;

  @override
  void onReady() {
    super.onReady();
    var user = Get.arguments as User;
    argument.value = user.toString();
  }
}