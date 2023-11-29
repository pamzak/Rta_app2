import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController {
  final locale = Locale('en','US').obs;

  void changeLanguage(Locale newLocale) {
    locale.value = newLocale;
    Get.updateLocale(newLocale);
  }
}