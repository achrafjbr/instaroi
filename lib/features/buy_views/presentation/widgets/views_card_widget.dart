import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/features/buy_likes/presentation/widgets/likes_text_widget.dart';

import '../../../../utils/app_colors.dart';

class ViewsCardWidget extends StatelessWidget {
  const ViewsCardWidget({
    super.key,
    required this.viewNumber,
    required this.viewPrice,
    this.onTap,
  });
  final int viewNumber;
  final double viewPrice;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: AppPadding.allPaddingGeometry(context: context, value: 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black26,
          boxShadow: [BoxShadow(color: Colors.blueGrey, offset: Offset(0, 1))],
        ),
        child: Column(
          spacing: 5,
          children: [
            // Text : buy
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.03,
              title: 'Buy',
              color: AppColors.kWhite,
              fontWeight: FontWeight.bold,
            ),
            // Text :view number
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.04,
              title: viewNumber.toString(),
              color: AppColors.kWhite,
              fontWeight: FontWeight.bold,
            ),
            // Text : Instagram views
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.02,
              title: 'Instagram views',
              color: AppColors.kWhite,
              fontWeight: FontWeight.bold,
            ),
            // Text : views price.
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.03,
              title: '\$${viewPrice}',
              color: AppColors.kWhite,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}