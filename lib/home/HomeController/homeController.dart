import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late PageController pageController;
  var page = RxInt(0);
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onItemClick(int index) {
    if (index != page.value) page(index);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }
}
