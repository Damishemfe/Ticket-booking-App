import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color backgroundColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFf37b67);


  static TextStyle textStyle = TextStyle(fontSize: 16.0, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle h1 = TextStyle(fontSize: 26.0, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle h2 = TextStyle(fontSize: 21.0, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle h3 = TextStyle(fontSize: 17.0, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle h4 = TextStyle(fontSize: 14.0, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}