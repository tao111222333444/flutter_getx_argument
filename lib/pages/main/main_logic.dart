import 'package:fluttersample/common/entities/user.dart';
import 'package:fluttersample/common/routers/router_argument_key.dart';
import 'package:fluttersample/common/routers/router_pages.dart';
import 'package:fluttersample/common/services/param_manager.dart';
import 'package:get/get.dart';

class MainLogic extends GetxController {

  void toPage1(){
    Get.toNamed(RouterPages.page1,arguments:User(name:"arguments 传参",age: 21));
  }
  void toPage(){
    Get.toNamed(RouterPages.page2+"?${RouterArgumentKey.Argument1}=直接 传参" );
  }
  void toPage2(){
    Get.toNamed(RouterPages.page2,parameters:{RouterArgumentKey.Argument1:"parameters 传参"} );
  }
  void toPage3(){
    //同时打开两个页面并且第一个打开页面传参了  这会导致 第一个页面获取不到传参 因为传参会被最新的页面的传参覆盖
    Get.toNamed(RouterPages.page3,arguments:{RouterArgumentKey.Argument1:"page 3 arguments 传参"} );
    toPage2();
  }

  void toPage4(){
    //通过ParamManager 解决问题 page 3 的问题
    ParamManager.to.setParams(RouterPages.page4, {RouterArgumentKey.Argument1:"page 4 arguments 传参"});
    Get.toNamed(RouterPages.page4,);
    toPage2();
  }

  void toPage5(){
    Get.toNamed(RouterPages.page5,arguments:{RouterArgumentKey.Argument1:"arguments 传参"} ,parameters:{RouterArgumentKey.Argument1:"parameters 传参"});
  }
}