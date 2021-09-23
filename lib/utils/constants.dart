import 'package:flutter/material.dart';

String mapkey = "AIzaSyBWFn1lIxBqQdDL5dcddM6oMVmEbyVuQP4";

final otpInputDecoration = InputDecoration(
  counterText: "",
  contentPadding:
  EdgeInsets.symmetric(vertical:15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: Colors.black12),
  );
}