import 'package:flutter/material.dart';

class NoLogoHeaderRectangleWidget extends StatelessWidget {
  final double height;

  const NoLogoHeaderRectangleWidget({required key, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              //color: Color(0xFFD4E7FE),
              gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Color(0xFFF0F0F0),
                  ],
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.3])),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        ),
      ],
    );
  }
}
