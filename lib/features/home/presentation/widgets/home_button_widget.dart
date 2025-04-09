import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/dimensions.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';

import '../../../../utils/app_colors.dart';

class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({
    super.key,
    this.onPressed,
    required this.label,
    required this.fontSize,
    required this.icon,  this.buttonColor,
  });

  final void Function()? onPressed;
  final String label;
  final double fontSize;
  final IconData icon;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.setHeight(context: context, height: 0.07),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: buttonColor,
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: HomeTextWidget(
          fontSize: fontSize,
          title: label,
          color: AppColors.kWhite,
          textAlign: TextAlign.left,
          fontWeight: FontWeight.bold,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          iconSize: 25,
          iconAlignment: IconAlignment.start,
          textStyle: TextStyle(color: AppColors.kWhite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          shadowColor: AppColors.kWhite,
          backgroundColor: buttonColor,
        ),
        icon: Icon(icon, color: AppColors.kWhite),
      ),
    );
  }
}
