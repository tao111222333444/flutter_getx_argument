# flutter  Getx 传参

一个用 ParamManager 解决同时打开多个页面的时候前面传参被覆盖，对应页面不能收到的问题

改项目使用  Getx 为基础架构

###### 1.使用 Getx 的简单传参
```Dart
//跳转发起页面
void toPage(){  
  Get.toNamed(RouterPages.page2+"?${RouterArgumentKey.Argument1}=直接 传参" );  
}

//接收页面
@override  
void onReady() {  
  super.onReady();  
  parameters.value = Get.parameters[RouterArgumentKey.Argument1]??"";  
}

```

###### 2.使用Getx的 parameters 进行页面传参
`parameters`参数是`Map<String, String>?`类型 ，所以只能传键值对的参数，并且只能是`String`，实际和第一种简单传参的方式一样，在Getx 的路由跳转方法里转换的。
示例代码：
```Dart
//跳转发起页面
void toPage2(){  
  Get.toNamed(RouterPages.page2,parameters:{RouterArgumentKey.Argument1:"parameters 传参"} );  
}

//接收页面
@override  
void onReady() {  
  super.onReady();  
  parameters.value = Get.parameters[RouterArgumentKey.Argument1]??"";  
}
```

###### 3.使用 Getx 的 arguments 进行页面传参
`arguments` 参数是 `dynamic` 类型，该类型可以持有任何类型的值，所以可以往里面放任何的数据；列如：复杂对象、 Map、数值
示例代码：
``` dart
//数据类
class User {  
  final String name ;  
  final int age;  
  User({required this.name,required this.age});  
  
  @override  
  String toString() {  
    return 'User(name: $name, age:$age)';  
  }  
}

//跳转发起页面
void toPage1(){  
  Get.toNamed(RouterPages.page1,arguments:User(name:"arguments 传参",age: 21)); 
}

//接收页面
@override  
void onReady() {  
  super.onReady();  
  var user = Get.arguments as User;  
  argument.value = user.toString();  
}
```
###### 4.同时使用 Getx的arguments 和parameters 一起进行传参
示例代码：
```Dart
//跳转发起页面
void toPage5(){  
  Get.toNamed(RouterPages.page5,arguments:{RouterArgumentKey.Argument1:"arguments 传参"} ,parameters:{RouterArgumentKey.Argument1:"parameters 传参"});  
}

//接收页面
@override  
void onReady() {  
  super.onReady();  
  argument.value = Get.arguments[RouterArgumentKey.Argument1];  
  parameters.value = Get.parameters[RouterArgumentKey.Argument1]??"";  
}
```

###### 5.使用自定义 ParamManager 进行传参
> 因为在开发中业务需求 需要同时打开多页面，但是使用 Getx的传参会出现前面页面的参数被最后一个页面的传参覆盖，导致前面页面的传参丢失，所以就自定义了一个 ParamManager 对传参进行统一管理

1. 首先创建 `ParamManager` 方法类
```Dart
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
```

2. 在应用启动的时候进行初始化
```Dart
static Future init() async{  
  //初始化 flutter 框架  
  WidgetsFlutterBinding.ensureInitialized();  
  setSystemUi();  
  
  await Get.putAsync<ParamManager>(()=> ParamManager().init());  
}
//应用启动
void main() {  
  Global.init();  
  runApp(const MyApp());  
}
```

3. 跳转页面并进行传参：
```Dart
void toPage4(){  
  //通过ParamManager 解决问题 page 3 的问题  
  ParamManager.to.setParams(RouterPages.page4, {RouterArgumentKey.Argument1:"page 4 arguments 传参"});  
  Get.toNamed(RouterPages.page4,);  
  toPage2();  
}
```
3. 页面打开后的接收参数：
```Dart
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
```

具体代码请查看完成的示例项目：[flutter_getx_argument](https://github.com/tao111222333444/flutter_getx_argument)



