import 'package:fluttersample/pages/main/main_binding.dart';
import 'package:fluttersample/pages/main/main_page.dart';
import 'package:fluttersample/pages/pages/page_1.dart';
import 'package:fluttersample/pages/pages/page_2.dart';
import 'package:fluttersample/pages/pages/page_3.dart';
import 'package:fluttersample/pages/pages/page_4.dart';
import 'package:fluttersample/pages/pages/page_5.dart';
import 'package:fluttersample/pages/splash/splash_binding.dart';
import 'package:fluttersample/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RouterPages {

  static const initial = "/splash";

  static const main = "/main";

  static const page1 = "/page1";
  static const page2 = "/page2";
  static const page3 = "/page3";
  static const page4 = "/page4";
  static const page5 = "/page5";
  
  static final List<GetPage> pages = [
    GetPage(name: initial,
        page: ()=> SplashPage(),
      binding: SplashBinding()
    ),
    GetPage(name: main,
      page:()=>  MainPage(),
      binding: MainBinding()
    ),
    GetPage(name: page1,
        page:()=>  Page1(),
    ),
    GetPage(name: page2,
      page:()=>  Page2(),
    ),
    GetPage(name: page3,
      page:()=>  Page3(),
    ),
    GetPage(name: page4,
      page:()=>  Page4(),
    ),
    GetPage(name: page5,
      page:()=>  Page5(),
    ),
  ];
}