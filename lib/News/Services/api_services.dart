

import 'package:http/http.dart' as http;

import 'package:project/News/Config/Config.dart';
import 'package:project/News/Model/CatagoryModelfile.dart';
import 'package:project/News/Model/news_mode.dart';

class APIService{

  static var client = http.Client();
  static Future<List<News>?> fetchCategories() async {
    try {
      var respons = await client.get(ServiceConfig.getapi);
      if (respons.statusCode == 200) {
        var jsstring = respons.body;
        return catagoryFromJson(jsstring);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
  static Future<List<NewsModel>?> fetchnews(String categoryId ) async {
    try {
      var respons = await client.get(Uri.parse("https://shy-gold-jackrabbit-wear.cyclic.app/?catagory=news"));
      if (respons.statusCode == 200) {
        var jsstring = respons.body;
        return postfromjson(jsstring);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }





}