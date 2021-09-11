import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:lottie/lottie.dart';
import 'package:taxi_app/components/drawer.dart';
import 'package:taxi_app/components/home_page_bottom_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkLocation = false;
  bool textstate = false;

  Future<void> location_Function() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        setState(() {
          checkLocation = false;
        });
        return;
      } else {
        setState(() {
          checkLocation = true;
        });
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Taxi App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.only(left: 2, right: 2),
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
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                        topRight: Radius.circular(80),
                                      )),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Promotions",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Expanded(
                                          child: Text(
                                              "Choose from a variety of restaurants and get the best details.")),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/images/home_page_card1.png",
                                width: MediaQuery.of(context).size.width * 1,
                                // size.width * 0.18 means it use 18% of total width
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
            checkLocation
                ? Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 2, right: 2),
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
                            child: Row(
                              children: <Widget>[
                                Lottie.asset('assets/files/location.json'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Please Enable locations for a better experience",
                                      ),
                                      SizedBox(height: 10),
                                      Material(
                                        color: Colors.deepPurple,
                                        borderRadius: BorderRadius.circular(50),
                                        child: InkWell(
                                          onTap: () {
                                            location_Function();
                                          },
                                          child: AnimatedContainer(
                                              duration: Duration(seconds: 1),
                                              width: 150,
                                              height: 40,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Enable Location",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(left: 2, right: 2),
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
                              children: [
                                Text(
                                  "BOOK A RIDE",
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        margin: EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.green,
                                        ),
                                      ),
                                      Text(
                                        "Enter your destination",
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                      ),
                                      Icon(Icons.search)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 40,
                                  child: ListView.builder(
                                      itemCount: 10,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) =>
                                          Container(
                                            margin: EdgeInsets.only(right: 2),
                                            child: Material(
                                              color: Colors.black12,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: InkWell(
                                                onTap: () => {},
                                                child: Container(
                                                    width: 150,
                                                    height: 50,
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Location $index",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Home_Bottom_Cards(
                        svgSrc: "assets/images/home_page_card1.png",
                        title: "Inter City",
                        press: () {},
                        key: null,
                      ),
                    ),
                    Expanded(
                      child: Home_Bottom_Cards(
                        svgSrc: "assets/images/home_page_card1.png",
                        title: "City to City",
                        press: () {},
                        key: null,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Home_Bottom_Cards(
                        svgSrc: "assets/images/home_page_card1.png",
                        title: "Ride Share",
                        press: () {},
                        key: null,
                      ),
                    ),
                    Expanded(
                      child: Home_Bottom_Cards(
                        svgSrc: "assets/images/home_page_card1.png",
                        title: "Rent a car",
                        press: () {},
                        key: null,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (textstate) {
                        textstate = false;
                      } else {
                        textstate = true;
                      }
                    });
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Click here to learn",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: textstate ? 18 : 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
