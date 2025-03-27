import 'package:flutter/material.dart';

import '../../../../core/responsiveness/responsive_component/dimensions.dart';

class HomeTextWidget extends StatelessWidget {
  const HomeTextWidget({
    super.key,
    required this.fontSize,
    this.color,
    required this.title,
    this.fontWeight,
    this.textDirection,
    this.textAlign = TextAlign.center,
  });

  final double fontSize;
  final Color? color;
  final String title;
  final TextAlign textAlign ;
  final FontWeight? fontWeight;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      softWrap: true,
      textAlign: textAlign,
      textDirection: textDirection,
      style: TextStyle(
        color: color,
        fontSize: Dimensions.setFontDimension(
          context: context,
          value: fontSize,
        ),
        fontWeight: fontWeight,
      ),
    );
  }
}
