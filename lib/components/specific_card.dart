import 'package:flutter/material.dart';
import 'package:taxi_app/utils/my_styles.dart';
import 'package:taxi_app/utils/utils.dart';

class SpecificsCard extends StatelessWidget {
  final String name;
  final String name2;

  SpecificsCard({required this.name, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.zero,
        height: 80,
        width: 100,
        child: Column(
          children: [
            Text(
              name,
              style: BasicHeading,
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                name2,
                style: MyStyles.normalTextStyle(),
              ),
            ),
          ],
        ));
  }
}
