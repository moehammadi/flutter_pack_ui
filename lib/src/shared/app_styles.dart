import 'package:flutter/material.dart';
import 'package:ui_pack/src/shared/app_colors.dart';
import 'package:ui_pack/src/shared/app_fonts.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
  double height,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
    height: height,
  );
}

// light text style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  double height = 1,
  Color? color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.light,
    color ?? AppColors.black,
    height,
  );
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  Color? color,
  double height = 1,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.regular,
    color ?? AppColors.black,
    height,
  );
}

// semi bold text style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  Color? color,
  double height = 1,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.semiBold,
    color ?? AppColors.black,
    height,
  );
}

// bold text style
TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  Color? color,
  double height = 1,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.bold,
    color ?? AppColors.black,
    height,
  );
}
