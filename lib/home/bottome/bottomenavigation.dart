
// import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:project/home/HomeController/homeController.dart';
// import 'package:project/language/language_cantroller.dart';


// class bottomeNavigationbar extends StatelessWidget {
//          LanguageController languageController =Get.put(LanguageController());
//    bottomeNavigationbar({
//     super.key,
//     required this.controller,
//   });

//   final HomeController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => FancyBottomNavigation(
//         barBackgroundColor: Colors.amberAccent,
//         activeIconColor: Colors.amber,
//         tabs: [
//           TabData(
//             iconData: Icons.newspaper,
//             title: 'news'.tr,
//           ),
//           TabData(
//             iconData: Icons.tv,
//             title: 'tv'.tr,
//           ),
//           TabData(
//             iconData: Icons.video_call,
//             title: 'video'.tr,
//           ),
        
//         ],
//         onTabChangedListener: (position) {
//           controller.currentIndex.value = position;
//           controller.pageController.jumpToPage(position);
//         },
//         initialSelection: controller.currentIndex.value,
//         key: Key(languageController.locale.toString()),
        
//         inactiveIconColor: const Color.fromRGBO(1, 138, 194, 1),
//       ),
//     );
//   }
// }