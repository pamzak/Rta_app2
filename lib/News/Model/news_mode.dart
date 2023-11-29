import 'dart:convert';

List<NewsModel> postfromjson(String str) => List<NewsModel>.from(
      json.decode(str)['data'].map(
            (x) => NewsModel.fromJson(x),
          ),
    );

NewsModel postDetailsFromJson(String str) =>
    NewsModel.fromJson(jsonDecode(str));

class NewsModel {
  String? title;
  String? desc;
  bool? news;
  String? vid;
  String? img;

  String? catagory;

  NewsModel(
      {this.title, this.desc, this.news, this.vid, this.img, this.catagory});

  NewsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    news = json['news'];

    vid = json['vid'];

    img = json['img'];
    catagory = json['catagory'];
  }
}
