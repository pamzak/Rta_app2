// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/News/Controller/newscatagorie_contoller.dart';
import 'package:project/News/homenews.dart';
class Newshome extends StatefulWidget {
  const Newshome({super.key});

  @override
  State<Newshome> createState() => _homepageState();
}

class _homepageState extends State<Newshome> {
  final CatagoriesController catagoriesController =
      Get.put(CatagoriesController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Obx(() {
        if (catagoriesController.isLooading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return DefaultTabController(
            length: catagoriesController.categoriesList.length,
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: TabBar(
                    tabs: catagoriesController.categoriesList
                        .map((model) => tab(model.catagory))
                        .toList(),
                    isScrollable: true,
                    labelColor: Colors.red,
                    unselectedLabelColor: Color.fromRGBO(1, 138, 194, 1),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Color.fromRGBO(1, 138, 194, 1), //for selector of Tab Bart
                  ),
             
             
                ),
                body: TabBarView(
                    children: catagoriesController.categoriesList
                        .map((model) => NewsPage(
                              catagoryId: model.catagory,
                              isReload: true,
                            ))
                        .toList()),
              ),
            ),
          );
        }
      }),
    );
  }

  Widget tab(String? tabname) {
    return Tab(
      text: tabname,
    );
  }
}
