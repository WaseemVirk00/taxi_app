import 'package:flutter/material.dart';
import 'package:taxi_app/models/cars_category.dart';
import 'package:taxi_app/pages/citypage_subcategory_page.dart';
import 'package:taxi_app/utils/my_styles.dart';

import 'cars_grid.dart';

class CarsCategoryGrid extends StatelessWidget {
  const CarsCategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allItems.items.length,
      itemBuilder: (ctx, i) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => SubCategoryOverview(
                    item_index: i,
                  )));
          // _SubCategoryBottomSheet(context, i);
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            margin: EdgeInsets.only(
                top: i.isEven ? 0 : 20, bottom: i.isEven ? 20 : 0),
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
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        allItems.items[i].image_path,
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width,
                        // size.width * 0.18 means it use 18% of total width
                      ),
                      Expanded(
                        child: Text(
                          allItems.items[i].item_names,
                          style: MyStyles.headTextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}

void _SubCategoryBottomSheet(context, int item_index) {
  int _selected = 0;
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CarsGrid(item_index: item_index),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20))),
            )
          ],
        );
      });
}
