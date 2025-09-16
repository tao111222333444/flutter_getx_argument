//全局应用的服务初始化
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttersample/common/services/param_manager.dart';
import 'package:get/get.dart';

class Global {

  static Future init() async{
    //初始化 flutter 框架
    WidgetsFlutterBinding.ensureInitialized();
    setSystemUi();

    await Get.putAsync<ParamManager>(()=> ParamManager().init());
  }
  //设置通用状态栏
  static void setSystemUi() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    if (GetPlatform.isAndroid) {
      // 透明状态栏
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // transparent status bar
          statusBarIconBrightness: Brightness.dark
      ));
    }
  }

}