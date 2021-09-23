import 'package:flutter/material.dart';
import 'package:taxi_app/models/cars_category.dart';
import 'package:taxi_app/utils/my_styles.dart';

class CarsGridlWidget extends StatelessWidget {
  final int item_index;

  const CarsGridlWidget({
    Key? key,
    required this.item_index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: allItems.items[item_index].subcategoryItem.length,
      itemBuilder: (ctx, i) => Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  allItems.items[item_index].subcategoryItem
                      .elementAt(i)
                      .sub_image_path,
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width,
                  // size.width * 0.18 means it use 18% of total width
                ),
                Expanded(
                  child: Text(
                    allItems.items[item_index].subcategoryItem
                        .elementAt(i)
                        .sub_item_names,
                    style: MyStyles.headTextStyle(),
                  ),
                ),
              ],
            )
          ],
        ),
        margin: EdgeInsets.only(left: 25, right: 25),
        height: 185,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0x33303030),
              offset: Offset(0, 5),
              blurRadius: 15,
              spreadRadius: 0,
            ),
          ],
        ),
      ),
    );
  }
}
