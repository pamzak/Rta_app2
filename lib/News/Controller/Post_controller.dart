import 'package:get/get.dart';
import 'package:project/News/Model/news_mode.dart';
import 'package:project/News/Services/api_services.dart';

class PostControllert extends GetxController{


var isLooading=true.obs;
// ignore: non_constant_identifier_names
  var categoriesList = <NewsModel>[].obs;
  @override
  void onInit(){
fetchnews();
    super.onInit();
  }
  Future<void> fetchnews({String? catagoryId}) async {

try{
  isLooading(true);
var categories=await APIService.fetchnews(catagoryId! );
if(categories!.length!=0){
  categoriesList.clear();
  categoriesList.addAll(categories.toList());
}
}
finally{
isLooading(true);
}

  }





}