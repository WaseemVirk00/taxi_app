import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/utils/utils.dart';

import 'History_Detail_Page.dart';

class RideHistoryPage extends StatelessWidget {
  const RideHistoryPage({Key? key}) : super(key: key);

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
                  'Ride History',
                  style: MainHeading,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _ListofHistory(context),
            )
          ],
        ),
      ),
    );
  }
}

Widget _ListofHistory(BuildContext context) {
  return Container(
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int parentIndex) {
          return Padding(
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
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HistoryDetailPage(),
                            ));
                      },
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
                                      margin:
                                          EdgeInsets.only(right: 5, left: 5),
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
                                      margin:
                                          EdgeInsets.only(right: 5, left: 5),
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
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
