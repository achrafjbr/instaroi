import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:insta_roi/core/responsiveness/responsive_component/box.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';

import '../../../../core/responsiveness/responsive_component/dimensions.dart';

class HomeCapsuleWidget extends StatelessWidget {
  const HomeCapsuleWidget({
    super.key,
    required this.leftPartImage,
    required this.leftPartTitle,
    required this.leftPartSubTitle,
    required this.rightPartImage,
    required this.rightPartTitle,
    required this.rightPartSubTitle,
  });

  final String leftPartImage;
  final String leftPartTitle;
  final String leftPartSubTitle;
  final String rightPartImage;
  final String rightPartTitle;
  final String rightPartSubTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 100,
      children: [
        //first part
        Container(
          constraints: BoxConstraints(
            maxWidth: Dimensions.setWidth(context: context, width: 0.30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 25,
            children: [
              // picture.
              SvgPicture.asset(
                leftPartImage,
                width: Dimensions.setWidth(context: context, width: 0.15),
                height: Dimensions.setHeight(context: context, height: 0.15),
              ),
              // title.
              HomeTextWidget(
                textAlign: TextAlign.left,
                fontSize: 0.06,
                title: leftPartTitle,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              // SubTitle
              HomeTextWidget(
                textAlign: TextAlign.left,
                fontSize: 0.04,
                title: leftPartSubTitle,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),

        // second part
        Container(
          constraints: BoxConstraints(
            maxWidth: Dimensions.setWidth(context: context, width: 0.30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 25,
            children: [
              // picture.
              SvgPicture.asset(
                rightPartImage,
                width: Dimensions.setWidth(context: context, width: 0.15),
                height: Dimensions.setHeight(context: context, height: 0.15),
              ),
              // title.
              HomeTextWidget(
                textAlign: TextAlign.left,
                fontSize: 0.06,
                title: rightPartTitle,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              // SubTitle
              HomeTextWidget(
                textAlign: TextAlign.left,
                fontSize: 0.04,
                title: rightPartSubTitle,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
