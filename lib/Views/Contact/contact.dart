import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class contactpage extends StatefulWidget {
  @override
  State<contactpage> createState() => _contactpageState();
}

// ignore: camel_case_types
class _contactpageState extends State<contactpage> {
  @override
  Widget build(BuildContext context) {
    var textStyle2 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    var textStyle3 = const TextStyle(
        color: Color.fromRGBO(1, 138, 194, 1),
        fontSize: 19,
        fontWeight: FontWeight.bold);
    const rtacolor = Color.fromRGBO(1, 138, 194, 1);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Shimmer.fromColors(
          baseColor: rtacolor,
          highlightColor: Colors.white,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('contact',
                  textStyle: const TextStyle(fontSize: 23)),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Text(
                'contact1'+ " :",
                style: textStyle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  'contact2',
                  style: textStyle2,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'email1',
                style: textStyle3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  'contact3',
                  style: textStyle2,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'email2',
                style: textStyle3,
              ),
            ),
               Padding(
              padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  'contact4',
                  style: textStyle2,
                ),
              ),
            ),

              TextButton(
              onPressed: () {},
              child: Text(
                'email3',
                style: textStyle3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
