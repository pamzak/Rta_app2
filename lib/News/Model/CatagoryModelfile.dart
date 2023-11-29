import 'dart:convert';

List<News> catagoryFromJson(String str) => List<News>.from(
      json.decode(str)['data'].map(
            (x) => News.fromJson(x),
          ),
    );

class News {
  String? catagory;
  News({this.catagory});

  News.fromJson(Map<String, dynamic> json) {
    catagory = json['catagory'];
  }
}
