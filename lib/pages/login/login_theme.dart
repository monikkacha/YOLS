import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yols/utils/colors.dart';

class LoginTheme {
  static final roundedContainerTheme = BoxDecoration(
      color: AppColors.white, borderRadius: BorderRadius.circular(4.0));

  static final headingTextStyleTheme =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0);

  static textFieldTheme({required var hint}) {
    return InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0));
  }
}
