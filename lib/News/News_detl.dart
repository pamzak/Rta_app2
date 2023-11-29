import 'package:flutter/material.dart';

// ignore: must_be_immutable
class secondepage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var desc;
  // ignore: prefer_typing_uninitialized_variables
  var title;
  // ignore: prefer_typing_uninitialized_variables
  var img;
  // ignore: prefer_typing_uninitialized_variables
  var catagory;

  secondepage({super.key, this.desc, this.title, this.img, this.catagory});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: Image.network(
                        img,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(1, 138, 194, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Text(
                          catagory,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 5,
              expandedHeight: 400,
            ),
            SliverFillRemaining(
              child: Rowone(catagory, title, desc),
            )
          ],
        ),
      ),
    );
  }
}

Widget Rowone(String catagory, String title, String desc) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: SelectableText(
          desc,
         style:  TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal
        ),
      ),)
    ],
  );
}
