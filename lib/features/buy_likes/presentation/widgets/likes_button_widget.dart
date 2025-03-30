import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/dimensions.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';

class LikesButtonWidget extends StatelessWidget {
  const LikesButtonWidget({
    super.key,
    this.onPressed,
    required this.label,
    required this.fontSize,
    this.buttonColor,
  });

  final void Function()? onPressed;
  final String label;
  final double fontSize;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.setHeight(context: context, height: 0.07),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: buttonColor,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 5,
          iconSize: 25,
          iconAlignment: IconAlignment.start,
          textStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          shadowColor: Colors.white,
        ), child: HomeTextWidget(
        fontSize: fontSize,
        title: label,
        color: Colors.white,
        textAlign: TextAlign.left,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}
