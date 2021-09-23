import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taxi_app/components/header_widget.dart';
import 'package:taxi_app/utils/styles.dart';

class SupportPage extends StatelessWidget {
  static final routeName = "support";

  _buildRowWidgets(IconData iconData, String title, String subtitle) {
    return Row(
      children: <Widget>[
        Icon(
          iconData,
          color: Colors.green,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
            ),
            new Text(subtitle, style: CustomStyles.smallTextStyle)
          ],
        ),
      ],
    );
  }

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
          NoLogoHeaderWidget(
            height: mQ.height * 0.5,
            key: null,
          ),
          Positioned(
              top: 47,
              child: Container(
                height: 800,
                width: mQ.width,
                child: ListView(
                  children: <Widget>[
                    Lottie.asset("assets/files/help_grow.json",
                        height: 180, reverse: true),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFEC85C),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.call),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Call us"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff5FD0D3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.mail),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Mail us"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50.0, top: 30, right: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Write us",
                            style: CustomStyles.mediumTextStyle,
                          ),
                          Text(
                            "Let us kow your query",
                            style: CustomStyles.smallLightTextStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Phone Number/Email",
                            style: CustomStyles.smallTextStyle,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Add contact info",
                              border: InputBorder.none,
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Add your issue/feedback",
                            style: CustomStyles.smallTextStyle,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Write your message",
                              border: InputBorder.none,
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff5FD0D3),
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Submit"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 520,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
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
                  "Support",
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
