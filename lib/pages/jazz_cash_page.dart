import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JazzCashPage extends StatefulWidget {
  const JazzCashPage({Key? key}) : super(key: key);

  @override
  _JazzCashPageState createState() => _JazzCashPageState();
}

class _JazzCashPageState extends State<JazzCashPage> {
  bool chnageButton = false;

  movetohome(BuildContext context) async {
    // setState(() {
    //   chnageButton = true;
    // });
    // await Future.delayed(Duration(seconds: 1));
    // await Navigator.pushNamed(context, MyRoutes.homeRoute);
    // setState(() {
    //   chnageButton = false;
    // });
  }

  @override
  void initState() {
    super.initState();
  }

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
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/images/jazz_cash_logo.png",
                  fit: BoxFit.fitWidth,
                  height: 180,
                  width: 200,
                ),
              ),
              Text(
                "Mobile Number",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              TextField(
                decoration: InputDecoration(),
              ),
              Text(
                "Amount",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              TextField(
                decoration: InputDecoration(),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(chnageButton ? 50 : 8),
                  child: InkWell(
                    onTap: () => movetohome(context),
                    child: Hero(
                      tag: Key("100"),
                      child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: chnageButton ? 50 : 250,
                          height: 50,
                          alignment: Alignment.center,
                          child: chnageButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
