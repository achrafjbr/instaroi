import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/dimensions.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';

class LikesButtonWidget extends StatelessWidget {
  const LikesButtonWidget({
    super.key,
    this.onTap,
    required this.label,
    required this.fontSize,
    this.buttonColor,
    required this.height,
    required this.width,
    this.fontWeight,
  });

  final void Function()? onTap;
  final String label;
  final double fontSize;
  final double height;
  final double width;
  final Color? buttonColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: Dimensions.setHeight(context: context, height: height),
        width: Dimensions.setWidth(context: context, width: width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: buttonColor,
        ),
        child: HomeTextWidget(
          fontSize: fontSize,
          title: label,
          color: Colors.white,
          textAlign: TextAlign.center,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
