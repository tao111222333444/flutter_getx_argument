import 'package:get/get.dart';

class ParamManager extends GetxService{
  static ParamManager get to => Get.find();
  // 使用Map存储每个页面的参数，key 为路由名称
  final Map<String,dynamic> _params = {};

  Future<ParamManager> init() async{
    return this;
  }
  //设置参数
  void setParams(String routeName, dynamic arguments){
    _params[routeName] = arguments;
  }

  //获取参数
  dynamic getParams(String routeName){
    return _params[routeName];
  }
  //清除单个参数
  void clearParams(String routeName){
    _params.remove(routeName);
  }
  //清除所有的参数
  void clearAll(){
    _params.clear();
  }

}