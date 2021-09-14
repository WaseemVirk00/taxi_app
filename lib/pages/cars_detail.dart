import 'package:flutter/material.dart';
import 'package:taxi_app/components/specific_card.dart';
import 'package:taxi_app/utils/utils.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarDetail(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(title, style: MainHeading),
            Hero(tag: title, child: Image.asset(path)),
            Text(
              'SPECIFICATIONS',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SpecificsCard(
                    name: 'Model',
                    name2: brand,
                  ),
                ),
                Expanded(
                  child: SpecificsCard(
                    name: 'Color',
                    name2: color,
                  ),
                ),
                Expanded(
                  child: SpecificsCard(
                    name: 'Seats',
                    name2: gearbox,
                  ),
                ),
                Expanded(
                  child: SpecificsCard(
                    name: 'Gearbox',
                    name2: 'Automatic',
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
