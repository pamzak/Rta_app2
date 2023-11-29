import 'package:flutter/material.dart';
import 'package:project/News/Model/news_mode.dart';
import 'package:project/News/News_detl.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable, camel_case_types
class newscardwedget extends StatefulWidget {
  NewsModel model = new NewsModel();
  newscardwedget({required this.model}) {
    // TODO: implement newscardwedget
  }

  @override
  State<newscardwedget> createState() => _newscardwedgetState();
}

class _newscardwedgetState extends State<newscardwedget>
    with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
      begin: BoxDecoration(
          color: Colors.white,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(60),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              spreadRadius: 3.0,
              offset: Offset(0, 6.0),
            )
          ]),
      end: BoxDecoration(
          color: Colors.white,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.zero));

          late final AnimationController _controller=AnimationController(vsync:   this,
          duration: Duration(seconds: 3),
          
          );
          @override
          void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => secondepage(
                      title: widget.model.title,
                      desc: widget.model.desc,
                      img: widget.model.img.toString(),
                      catagory: widget.model.catagory,
                    )),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Image.network(widget.model.img.toString()),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(1, 138, 194, 1),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      "${widget.model.catagory}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 1),
                        child: Text(
                          "${widget.model.title}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      //date
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReadMoreText(
                      "${widget.model.desc}",
                      trimLines: 3,
                      colorClickableText:
                          const Color.fromARGB(255, 115, 30, 233),
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'بیشتر ببینید',
                      trimExpandedText: 'بستن',
                      lessStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(1, 138, 194, 1),
                      ),
                      moreStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(1, 138, 194, 1),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
