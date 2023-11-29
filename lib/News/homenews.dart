// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project/News/Controller/Post_controller.dart';
import 'package:project/News/widget/News_card_wedget.dart';

// ignore: must_be_immutable
class NewsPage extends StatefulWidget {
  String? catagoryId;
  bool isReload = true;
  NewsPage({required this.catagoryId, required this.isReload});
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
// ignore: non_constant_identifier_names
  var refreshkey = GlobalKey<RefreshIndicatorState>();
  PostControllert postControllert = Get.put(PostControllert());

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () async {
        if (true) {
          await postControllert.fetchnews(catagoryId: widget.catagoryId);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () {
          if (postControllert.isLooading.value=false) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return RefreshIndicator(
              key: refreshkey,
              onRefresh: () =>
                  postControllert.fetchnews(catagoryId: widget.catagoryId),
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: postControllert.categoriesList.length,
                itemBuilder: (context, index) {
                  return newscardwedget(
                      model: postControllert.categoriesList[index]);
                },
              ),
            );
          }
        },
      ),
    );
  }
}
