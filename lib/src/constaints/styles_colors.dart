import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color blueGrey = const Color(0xFF6D7B8D);
  static Color navBar = const Color(0xFF988459);
  static Color navBar1 = const Color(0xFF635738);
  static Color iconBg = const Color(0xb5fc8a28);
  static const boxBg = <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)];
  static const barBg = <Color>[Color(0xFF988459), Color(0xFF635738)];


  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 25, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle5 = TextStyle(
      fontSize: 15, color: Colors.black87, fontWeight: FontWeight.w600);
  static TextStyle headLineStyle6 = TextStyle(
      fontSize: 15, color: Colors.white54, fontWeight: FontWeight.w400);
  static TextStyle headLineStyle7 = TextStyle(
      fontSize: 15, color: Colors.orange.shade900, fontWeight: FontWeight.w400);
  static TextStyle headLineStyle8 = TextStyle(
      fontSize: 15, color: Colors.white70, fontWeight: FontWeight.w400);
}
