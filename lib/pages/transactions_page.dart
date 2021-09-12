import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/pages/transaction_detail_page.dart';
import 'package:taxi_app/utils/my_styles.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Transactions",
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
        child: _ListofTransactions(context),
      ),
    );
  }
}

Widget _ListofTransactions(BuildContext context) {
  return Container(
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int parentIndex) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Date $parentIndex'),
              ),
              ListView.builder(
                  itemCount: 2,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int childIndex) {
                    return Container(
                        child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TransactionDetailPage(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.directions_car_rounded),
                          title: Text(
                            "title $childIndex",
                            style: MyStyles.normalTextStyle(),
                          ),
                          subtitle: Text(
                            "subtitle : $childIndex",
                            style: MyStyles.headTextStyle(),
                          ),
                          trailing: Text(" +PKR 2$childIndex",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Color(0xff3A4276),
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                    ));
                  }),
            ],
          );
        }),
  );
}
