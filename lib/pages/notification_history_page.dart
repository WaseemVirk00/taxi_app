import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/utils/my_styles.dart';
import 'package:taxi_app/utils/utils.dart';

import 'History_Detail_Page.dart';

class NotificationHistoryPage extends StatelessWidget {
  const NotificationHistoryPage({Key? key}) : super(key: key);

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
                  'Notifications',
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
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
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
                          children: [
                            Text(
                              'Title',
                              style: MyStyles.headTextStyle(),
                            ),
                            Text(
                              'Subtitle',
                              style: MyStyles.normalTextStyle(),
                            ),
                            Text(
                              "10/2/2019",
                              style: GoogleFonts.laila(),
                            ),
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
