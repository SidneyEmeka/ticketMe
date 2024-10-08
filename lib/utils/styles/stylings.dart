import 'package:flutter/material.dart';

class Stylings {
  //Colors
  static Color orange = Colors.red.shade700;
  static Color brown = Colors.brown.shade700;
  static Color bgColor = const Color(0xffeeedf2);

//textStyles
  static TextStyle header = TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w600,
      color: Colors.white
  );
  static TextStyle subHeader = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: brown
  );
  static TextStyle lilgreyText = TextStyle(
      fontSize: 10,
      color: orange,
      fontWeight: FontWeight.w500
  );
//media
  static String imgPath = "assets/images";
}