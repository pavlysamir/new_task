import 'package:flutter/material.dart';

import 'clip.dart';

class CustomTextContainerWithClipPath extends StatelessWidget {
  const CustomTextContainerWithClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: DiagonalPathClipperTwo(),
          child: Container(
            color: Colors.white,
            width: 225,
            height: 80,
          ),
        ),
        ClipPath(
          clipper: DiagonalPathClipperTwo(),
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Hotels Search",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            alignment: Alignment.centerLeft,
            color: Colors.blue,
            width: 220,
            height: 80,
          ),
        ),
      ],
    );
  }
}
