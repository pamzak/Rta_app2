import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/app_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "RTA NEWS APP",
      getPages: Page_Route.routes,
      initialRoute: Page_Route.HOME,
      theme: ThemeData.dark(),
  
    ),
  );

}




// class HomePage extends StatelessWidget {
//   final LanguageController languageController = Get.put(LanguageController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('app_title'.tr),
//         actions: [
//           _buildLanguageDropdown(),
//         ],
//       ),
//       body: Center(
//         child: Text('home'.tr),
//       ),
//     );
//   }

//   Widget _buildLanguageDropdown() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Obx(
//         () => DropdownButton(
//           value: languageController.locale.value,
//           items: const [
//             DropdownMenuItem(
//               value: Locale('en', 'US'),
//               child: Text('English'),
//             ),
//             DropdownMenuItem(
//               value: Locale('fa', 'AF'),
//               child: Text('پشتو'),
//             ),
//               DropdownMenuItem(
//               value: Locale('fa', 'AF'),
//               child: Text('دری'),
//             ),
//             // Add more languages as needed
//           ],
//           onChanged: (Locale? newLocale) {
//             if (newLocale != null) {
//               languageController.changeLanguage(newLocale);
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
