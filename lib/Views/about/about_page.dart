import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    const rtacolor = Color.fromRGBO(1, 138, 194, 1);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Shimmer.fromColors(
          baseColor: rtacolor,
          highlightColor: Colors.white,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('aboutUs',
                  textStyle: const TextStyle(fontSize: 23)),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Text('about', style:  const TextStyle(fontSize: 16  , fontWeight: FontWeight.bold),)


        ),
      );
    
  }
}
