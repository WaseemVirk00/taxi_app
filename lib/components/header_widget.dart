import 'package:flutter/material.dart';

class NoLogoHeaderWidget extends StatelessWidget {
  final double height;

  const NoLogoHeaderWidget({required key, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        height: height,
        color: Color(0xff2dbb54),
        child: Center(
          child: Container(
            width: 200,
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 150);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
