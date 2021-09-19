import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taxi_app/utils/utils.dart';

class TransactionDetailPage extends StatefulWidget {
  const TransactionDetailPage({Key? key}) : super(key: key);

  @override
  _TransactionDetailPageState createState() => _TransactionDetailPageState();
}

class _TransactionDetailPageState extends State<TransactionDetailPage> {
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
                  'Transaction Detail',
                  style: MainHeading,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _card2History(context),
                ],
              ),
            ),
            Lottie.asset('assets/files/waves.json',
                repeat: true, reverse: true),
          ],
        ),
      ),
    );
  }
}

Widget _card2History(BuildContext context) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4), blurRadius: 20, color: Colors.black12),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _card3History(context, "Category", " Transport"),
                  SizedBox(
                    height: 20,
                  ),
                  _card3History(context, "Date", " 11:43 AM, 26 Jul 2021"),
                  SizedBox(
                    height: 20,
                  ),
                  _card3History(context, "Transaction ID", " ejajj-62972828"),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget _card3History(BuildContext context, String Text1, String Text2) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4), blurRadius: 20, color: Colors.black12),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _mRow(Text1, Text2),
                ],
              ),
            ),
          ),
        )
      ],
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
