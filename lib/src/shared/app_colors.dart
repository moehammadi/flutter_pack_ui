import 'package:flutter/material.dart';

class AppColors {
  static Color primary = HexColor.fromHex("#FF4CAF50");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color lightGrey = HexColor.fromHex("#d3d3d3");
  static Color transparent = HexColor.fromHex("#AAFFFFFF");
  static Color blue = HexColor.fromHex("#0000FF");
  static Color black = HexColor.fromHex("#000000");
  static Color yellow = HexColor.fromHex("#FFFFEB3B");
  static Color green = HexColor.fromHex("#FF4CAF50");
  static Color red = HexColor.fromHex("#FF0000");
  static Color redAccent = HexColor.fromHex("#FFFF5252");
  static Color error = HexColor.fromHex("#e61f34"); // red color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString'; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
