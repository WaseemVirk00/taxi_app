import 'package:flutter/material.dart';
import 'package:taxi_app/models/cars.dart';
import 'package:taxi_app/pages/cars_detail.dart';
import 'package:taxi_app/utils/my_styles.dart';

class CarsGrid extends StatelessWidget {
  const CarsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => CarDetail(
                    title: allCars.cars[i].brand,
                    brand: allCars.cars[i].model,
                    fuel: allCars.cars[i].fuel,
                    price: allCars.cars[i].price,
                    path: allCars.cars[i].path,
                    gearbox: allCars.cars[i].seats,
                    color: allCars.cars[i].color,
                  )));
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
                        allCars.cars[i].path,
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width,
                        // size.width * 0.18 means it use 18% of total width
                      ),
                      Expanded(
                        child: Text(
                          allCars.cars[i].brand,
                          style: MyStyles.headTextStyle(),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          allCars.cars[i].model,
                          style: MyStyles.normalTextStyle(),
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
