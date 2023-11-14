import 'package:flutter/material.dart';

class DiagonalPathClipperTwo extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {

      path.lineTo(0, size.height );
      path.lineTo(size.width, size.height );
      path.lineTo(size.width - 100, 0 );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}