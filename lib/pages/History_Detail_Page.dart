import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/utils/utils.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({Key? key}) : super(key: key);

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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'History Detail',
                  style: MainHeading,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _card1History(context),
                  _card2History(context),
                  _card3History(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _card1History(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "10/2/2019",
                            style: GoogleFonts.laila(),
                          ),
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          margin: EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "3.23pm",
                          style: GoogleFonts.laila(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green.withOpacity(0.20),
                          ),
                          child: Center(
                            child: Container(
                              height: 5,
                              width: 5,
                              margin: EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Lahore"),
                      ],
                    ),
                    _conatinerDots(2, 2),
                    _conatinerDots(2, 2),
                    _conatinerDots(2, 2),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.only(right: 5, left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green.withOpacity(0.20),
                          ),
                          child: Center(
                            child: Container(
                              height: 5,
                              width: 5,
                              margin: EdgeInsets.only(right: 5, left: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Multan"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _mRow("Total Time", "5 Hours"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _card2History(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _mRow("Driver", "Muhammad Waseem"),
                    SizedBox(
                      height: 20,
                    ),
                    _mRow("Car Type", "Honda Civic"),
                    SizedBox(
                      height: 20,
                    ),
                    _mRow("Car Number", "KAA-5656"),
                    SizedBox(
                      height: 20,
                    ),
                    _mRow("Category", "Rent a car"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _card3History(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _mRow("Ride Fare", "PKR 60"),
                    SizedBox(
                      height: 20,
                    ),
                    _mRow("Tolls Chargers", "20"),
                    SizedBox(
                      height: 20,
                    ),
                    _mRow("Subtotal", "PKR 60"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _conatinerDots(double mheight, double mwidth) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, top: 2),
    child: Container(
      height: mheight,
      width: mwidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.green,
      ),
    ),
  );
}

Widget _mRow(String Text1, String Text2) {
  return Row(
    children: [
      Expanded(child: Text(Text1)),
      Expanded(child: Text(Text2)),
    ],
  );
}
