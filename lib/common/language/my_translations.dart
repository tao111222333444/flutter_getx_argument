import 'package:fluttersample/common/language/language_cn.dart';
import 'package:fluttersample/common/language/language_en.dart';
import 'package:get/get.dart';

class MyTranslations extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    "en":LanguageEn,
    "zh":LanguageCn
  };
}