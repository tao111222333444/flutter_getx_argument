import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttersample/common/language/my_translations.dart';
import 'package:fluttersample/common/routers/router_pages.dart';
import 'package:fluttersample/constants.dart';
import 'package:fluttersample/global.dart';
import 'package:get/get.dart';

void main() {
  Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.AppName,
      localizationsDelegates:const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: RouterPages.initial,
      getPages: RouterPages.pages,
      translations: MyTranslations(),
      locale: Get.deviceLocale ?? const Locale('en'),
      //没有本地翻译就默认使用英语
      fallbackLocale: const Locale("en"),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
          primarySwatch:Colors.purple,
          scaffoldBackgroundColor: const Color(0xfff5f5f5),

      ),
    );
  }
}


