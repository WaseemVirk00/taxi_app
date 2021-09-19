import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/pages/credit_card_page.dart';
import 'package:taxi_app/pages/transactions_page.dart';
import 'package:taxi_app/utils/my_styles.dart';

import 'easypaisa_page.dart';
import 'jazz_cash_page.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Wallet",
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
        child: Container(
          child: Material(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 18, right: 18, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Muhammad Waseem",
                      style: MyStyles.headTextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _contentOverView(context),
                  SizedBox(
                    height: 20,
                  ),
                  _addCardView(context),
                  SizedBox(
                    height: 20,
                  ),
                  _addedCardView(context),
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Transactions",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Color(0xff3A4276),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransactionsPage(),
                              ));
                        },
                        child: Text(
                          "View all",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  _ListofTransactions(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _contentOverView(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Color(0xffF1F3F6)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "20",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Color(0xff171822),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Current Balance",
                style: MyStyles.normalTextStyle(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
        FloatingActionButton(
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          child: Icon(Icons.add),
        )
      ],
    ),
  );
}

Widget _addCardView(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Color(0xffF1F3F6)),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cards",
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.payment),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Add a card to enjoy a seamless payments experience",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Color(0xff3A4276).withOpacity(.4),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Material(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreditCardPage(),
                      ));
                },
                child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      "Add Card",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _addedCardView(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Color(0xffF1F3F6)),
    child: CreditCardWidget(
      cardNumber: "4862477000196880",
      expiryDate: "04/24",
      cardHolderName: "Muhammad Waseem".toUpperCase(),
      cvvCode: "1234",
      showBackView: false,
      obscureCardNumber: true,
      obscureCardCvv: true,
    ),
  );
}

Widget _ListofTransactions(BuildContext context) {
  return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Material(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.directions_car_rounded),
            title: Text(
              "title $index",
              style: MyStyles.normalTextStyle(),
            ),
            subtitle: Text(
              "subtitle : $index",
              style: MyStyles.headTextStyle(),
            ),
            trailing: Text(" +PKR 2$index",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color(0xff3A4276),
                  fontWeight: FontWeight.w500,
                )),
          )));
}

void _settingModalBottomSheet(context) {
  int _selected = 0;
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 260,
          color: Color(0xff737373),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add funds from",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.cancel,
                          )),
                    ],
                  ),
                  ListTile(
                    leading: new Icon(Icons.payment),
                    title: new Text(
                      'Credit/debit card',
                      style: MyStyles.headTextStyle(),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: new Icon(Icons.payment),
                    title: new Text(
                      'Jazzcash',
                      style: MyStyles.headTextStyle(),
                    ),
                    onTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JazzCashPage(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: new Icon(Icons.payment),
                    title: new Text(
                      'Easypaisa',
                      style: MyStyles.headTextStyle(),
                    ),
                    onTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EasyPaisaPage(),
                          ));
                    },
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20),
                    topRight: const Radius.circular(20))),
          ),
        );
      });
}
