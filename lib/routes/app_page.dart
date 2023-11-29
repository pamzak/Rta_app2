import 'package:get/get.dart';

import 'package:project/News/News_home.dart';
import 'package:project/home/home.dart';

class Page_Route {

  static const HOME = "/Home";

  static List<GetPage> routes = [
  
    GetPage(
      name: HOME,
      page: () => HomeView(),
    ),
  ];
}
