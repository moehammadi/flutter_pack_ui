import 'package:flutter/material.dart';
import 'package:ui_pack/src/shared/app_fonts.dart';
import 'package:ui_pack/src/shared/app_styles.dart';

class PackText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color? color;
  final double fontSize;

  PackText.light(
      {required this.text, Key? key, this.color, this.fontSize = FontSize.s16})
      : style = getLightStyle(
          color: color,
          fontSize: fontSize,
        ),
        super(key: key);

  PackText.regular(
      {required this.text, Key? key, this.color, this.fontSize = FontSize.s16})
      : style = getRegularStyle(
          color: color,
          fontSize: fontSize,
        ),
        super(key: key);

  PackText.semiBold(
      {required this.text, Key? key, this.color, this.fontSize = FontSize.s16})
      : style = getSemiBoldStyle(
          color: color,
          fontSize: fontSize,
        ),
        super(key: key);

  PackText.bold(
      {required this.text, Key? key, this.color, this.fontSize = FontSize.s16})
      : style = getBoldStyle(
          color: color,
          fontSize: fontSize,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
