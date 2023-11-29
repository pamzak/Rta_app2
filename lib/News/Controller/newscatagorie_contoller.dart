import 'package:get/get.dart';
import 'package:project/News/Model/CatagoryModelfile.dart';
import 'package:project/News/Services/api_services.dart';

class CatagoriesController  extends GetxController{
var isLooading=true.obs;
// ignore: non_constant_identifier_names
  var categoriesList = <News>[].obs;
  @override
  void onInit(){
fetchCategories();
    super.onInit();
  }
  Future<void> fetchCategories() async {
try{
  isLooading(true);
var categories=await APIService.fetchCategories();
if(categories!.length>0){
  categoriesList.clear();
  categoriesList.addAll(categories);
}

}
finally{
isLooading(false);
}

  }


void onclose(){
super.onClose();


}

}