import 'package:flutter/material.dart';

Widget mIcon(String svgSrc) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: Color(0xffEBECF1),
    ),
    child: Align(
      alignment: Alignment.center,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xffE8F2F7),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        svgSrc,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text("Test")
          ],
        ),
      ),
    ),
  );
}
