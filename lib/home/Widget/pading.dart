
import 'package:flutter/material.dart';

class padingline extends StatelessWidget {
  const padingline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 10,
        width: 1,
        color: Colors.black,
      ),
    );
  }

}
