import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyles {
  static TextStyle normalTextStyle() {
    return GoogleFonts.poppins(
        fontSize: 15,
        color: Color(0xff3A4276).withOpacity(.4),
        fontWeight: FontWeight.w500);
  }

  static TextStyle headTextStyle() {
    return GoogleFonts.poppins(
      fontSize: 15,
      color: Color(0xff3A4276),
      fontWeight: FontWeight.w800,
    );
  }
}
