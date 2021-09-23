import 'package:flutter/material.dart';
import 'package:taxi_app/components/cars_grid.dart';
import 'package:taxi_app/components/header_widgetRectangle.dart';
import 'package:taxi_app/models/cars_category.dart';
import 'package:taxi_app/utils/styles.dart';

class SubCategoryOverview extends StatelessWidget {
  final int item_index;

  SubCategoryOverview({required this.item_index});

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
          NoLogoHeaderRectangleWidget(
            height: mQ.height * 0.1,
            key: null,
          ),
          Positioned(
              top: mQ.height * 0.15,
              left: 5,
              right: 5,
              child: Container(
                  height: mQ.height * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CarsGrid(item_index: item_index),
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
                  "Available ${allItems.items[item_index].item_names}",
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
