import 'package:flutter/material.dart';
import 'package:ui_pack/src/shared/app_colors.dart';
import 'package:ui_pack/ui_pack.dart';

class PackButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final IconData? icon;
  final bool outline;

  PackButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.icon,
    this.outline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: double.infinity,
        height: AppSize.s50,
        alignment: Alignment.center,
        decoration: !outline
            ? BoxDecoration(
                color: disabled ? AppColors.lightGrey : AppColors.primary,
                borderRadius: BorderRadius.circular(8),
              )
            : BoxDecoration(
                color: AppColors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.primary, width: 1),
              ),
        child: !busy
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    Icon(icon, color: AppColors.primary, size: AppSize.s20),
                  if (icon != null) const SizedBox(width: 5),
                  outline
                      ? PackText.regular(
                          text: title,
                          color: AppColors.primary,
                        )
                      : PackText.light(text: title, color: AppColors.white),
                ],
              )
            : CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(AppColors.white),
                strokeWidth: 2,
              ),
      ),
    );
  }
}
