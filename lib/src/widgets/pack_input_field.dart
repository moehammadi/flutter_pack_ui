import 'package:flutter/material.dart';
import 'package:ui_pack/src/shared/app_colors.dart';
import 'package:ui_pack/src/shared/app_styles.dart';
import 'package:ui_pack/src/shared/app_values.dart';

class PackInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeHolder;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback? trailingTapped;
  final bool isPassword;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  PackInputField({
    Key? key,
    required this.controller,
    required this.placeHolder,
    this.leadingIcon,
    this.trailingIcon,
    this.trailingTapped,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: getLightStyle(color: AppColors.primary),
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(leadingIcon),
        suffixIcon: trailingIcon != null
            ? GestureDetector(
                onTap: trailingTapped,
                child: Icon(trailingIcon),
              )
            : null,
        hintText: placeHolder,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16, vertical: AppPadding.p20),
        filled: true,
        fillColor: AppColors.lightGrey,
        border: circularBorder.copyWith(
            borderSide: BorderSide(color: AppColors.lightGrey)),
        errorBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: AppColors.redAccent)),
        focusedBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: AppColors.primary)),
        disabledBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: AppColors.lightGrey)),
      ),
    );
  }
}
