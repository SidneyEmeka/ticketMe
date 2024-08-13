import 'package:flutter/material.dart';

class Stylings {
  //Colors
  static Color orange = Colors.red.shade900;
  static Color brown = Colors.brown.shade900;
  static Color bgColor = const Color(0xffeeedf2);

//textStyles
  static TextStyle header = TextStyle(
      fontSize: 22,
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
      color: Colors.orange.shade900,
      fontWeight: FontWeight.w500
  );
//media
  static String imgPath = "assets/images";
}