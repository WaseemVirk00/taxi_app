import 'package:flutter/material.dart';
import 'package:taxi_app/components/cars_category_grid.dart';
import 'package:taxi_app/components/header_widget.dart';
import 'package:taxi_app/utils/styles.dart';

class CitytoCityPage extends StatelessWidget {
  static final String routeName = "ride-history-page";

  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            width: mQ.width,
            height: mQ.height,
          ),
          NoLogoHeaderWidget(
            height: mQ.height * 0.5,
            key: null,
          ),
          Positioned(
              top: mQ.height * 0.18,
              left: 5,
              right: 5,
              child: Container(
                  height: mQ.height * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CarsCategoryGrid(),
                  ))),
          Positioned(
            top: 50.0,
            left: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.white,
                  textColor: Colors.green,
                  child: Icon(
                    Icons.arrow_back,
                    size: 15,
                  ),
                  padding: EdgeInsets.all(6),
                  shape: CircleBorder(),
                ),
                Text(
                  "Choose Category",
                  style: CustomStyles.cardBoldTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
