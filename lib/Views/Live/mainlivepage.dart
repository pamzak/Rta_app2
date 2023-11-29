import 'package:flutter/material.dart';

class mainlivepage extends StatelessWidget {
  const mainlivepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            borderOnForeground: true,
            shadowColor: Color.fromARGB(255, 224, 238, 250),
            elevation: 3,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Container(
                  child: Image.asset(
                    "images/p2.jpg",
                    width: double.infinity,
                    height: 180,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            borderOnForeground: true,
            shadowColor: Color.fromARGB(255, 224, 238, 250),
            elevation: 3,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Container(
                  child: Image.asset(
                    "images/p3.png",
                    width: double.infinity,
                    height: 180,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
