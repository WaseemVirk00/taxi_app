import 'package:flutter/material.dart';
import 'package:taxi_app/pages/credit_card_page.dart';
import 'package:taxi_app/pages/home_page.dart';
import 'package:taxi_app/pages/input_mobile_number.dart';
import 'package:taxi_app/pages/otp_mobile_number.dart';
import 'package:taxi_app/pages/sign_up.dart';
import 'package:taxi_app/pages/splash_screen.dart';
import 'package:taxi_app/pages/transaction_detail_page.dart';
import 'package:taxi_app/pages/transactions_page.dart';
import 'package:taxi_app/pages/wallet_page.dart';
import 'package:taxi_app/utils/routers.dart';
import 'package:taxi_app/utils/theme.dart';

import 'pages/onbording.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.walletRoute,
        routes: {
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.splashRoute: (context) => SplashScreen(),
          MyRoutes.onBoardingRoute: (context) => OnBording(),
          MyRoutes.inputMobileNumberRoute: (context) => InputMobileNumber(),
          MyRoutes.otpMobileNumberRoute: (context) => OtpMobileNumber(),
          MyRoutes.signUpRoute: (context) => Sign_Up(),
          MyRoutes.walletRoute: (context) => WalletPage(),
          MyRoutes.creditCardPageRoute: (context) => CreditCardPage(),
          MyRoutes.transactionsPageRoute: (context) => TransactionsPage(),
          MyRoutes.transactionDetailPageRoute: (context) =>
              TransactionDetailPage(),
        });
  }
}
