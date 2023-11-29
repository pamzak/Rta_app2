
  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/language/language_cantroller.dart';



  Widget buildLanguageDropdown() {
      final LanguageController languageController =Get.put(LanguageController());
      print(languageController.locale.value);

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Obx(
        () => DropdownButton(

          icon: Icon(Icons.language),
          value: languageController.locale.value,
          items: const [
            DropdownMenuItem(
              value: Locale('en', 'US'),
              child: Text('English'),
            ),
            DropdownMenuItem(
              value: Locale('ps', 'AF'),
              child: Text('پشتو'),
            ),
              DropdownMenuItem(
              value: Locale('fa', 'AF'),
              child: Text('دری'),
            ),
            // Add more languages as needed
          ],
          onChanged: (Locale? newLocale) {
            if (newLocale != null) {
              languageController.changeLanguage(newLocale);
            }
          },
        ),
      ),
  
  
  
    );
  }




  

