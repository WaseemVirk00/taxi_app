import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InterCityPage extends StatefulWidget {
  const InterCityPage({Key? key}) : super(key: key);

  @override
  _InterCityPageState createState() => _InterCityPageState();
}

String date = "";
DateTime selectedDate = DateTime.now();

class _InterCityPageState extends State<InterCityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Inter-City",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Color(0xff3A4276),
            fontWeight: FontWeight.w800,
          ),
        ),
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
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "PickUp Location",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Icon(Icons.location_city_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Lahore",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Address or note",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                height: 1,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "Destination",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Icon(Icons.location_city_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Multan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Address or note",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                height: 1,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Fare offer",
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                height: 1,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Add notes",
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                height: 1,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
              child: Row(
                children: [
                  Icon(Icons.date_range),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Text(
                      "Pick Date",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(
                height: 1,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
              child: Row(
                children: [
                  Icon(Icons.timer),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Pick Time",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                // onTap: () => movetohome(context),
                child: Hero(
                  tag: Key("100"),
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 250,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}
