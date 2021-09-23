import 'package:flutter/material.dart';
import 'package:taxi_app/models/cars_category.dart';
import 'package:taxi_app/pages/confirm_now_page.dart';
import 'package:taxi_app/utils/styles.dart';

class CarsGrid extends StatelessWidget {
  final int item_index;

  const CarsGrid({
    Key? key,
    required this.item_index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: allItems.items[item_index].subcategoryItem.length,
      itemBuilder: (ctx, i) => GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => ConfirmNowPage()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 20,
                    color: Colors.black12),
              ],
            ),
            child: Column(
              children: <Widget>[
                Image.asset(
                  allItems.items[item_index].subcategoryItem
                      .elementAt(i)
                      .sub_image_path,
                  height: MediaQuery.of(context).size.height * 0.2,
                  // size.width * 0.18 means it use 18% of total width
                ),
                Expanded(
                  child: Text(
                    allItems.items[item_index].subcategoryItem
                        .elementAt(i)
                        .sub_item_names,
                    style: CustomStyles.cardBoldDarkDrawerTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
