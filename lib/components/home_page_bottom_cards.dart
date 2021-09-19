import 'package:flutter/material.dart';
import 'package:taxi_app/utils/my_styles.dart';

class Home_Bottom_Cards extends StatelessWidget {
  final String title, svgSrc;

  const Home_Bottom_Cards({
    required Key? key,
    required this.title,
    required this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(left: 2, right: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4), blurRadius: 20, color: Colors.black12),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Image.asset(svgSrc),
                  Text(
                    title,
                    style: MyStyles.normalTextStyle(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
