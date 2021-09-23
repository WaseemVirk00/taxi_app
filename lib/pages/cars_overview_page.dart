import 'package:flutter/material.dart';
import 'package:taxi_app/components/cars_grid.dart';
import 'package:taxi_app/utils/utils.dart';

class CarsOverView extends StatelessWidget {
  const CarsOverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Available Cars',
              style: MainHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarsGrid(item_index: 0),
          )
        ],
      ),
    );
  }
}
