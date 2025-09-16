import 'package:fluttersample/pages/main/main_logic.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>MainLogic());
  }
}