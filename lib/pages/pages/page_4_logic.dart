import 'package:fluttersample/common/routers/router_argument_key.dart';
import 'package:fluttersample/common/routers/router_pages.dart';
import 'package:fluttersample/common/services/param_manager.dart';
import 'package:get/get.dart';

class Page4Logic extends GetxController{
  var argument = "".obs;
  @override
  void onReady() {
    super.onReady();
    //获取传参
    argument.value = ParamManager.to.getParams(RouterPages.page4)[RouterArgumentKey.Argument1];
  }

  @override
  void onClose() {
    super.onClose();
    //清除传参
    ParamManager.to.clearParams(RouterPages.page4);
  }
}