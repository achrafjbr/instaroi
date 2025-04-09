import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/features/buy_likes/presentation/widgets/likes_text_widget.dart';

import '../../../../utils/app_colors.dart';

class SharesCardWidget extends StatelessWidget {
  const SharesCardWidget({
    super.key,
    required this.shareNumber,
    required this.sharePrice,
    this.onTap,
  });
  final int shareNumber;
  final double sharePrice;
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
            // Text :shares number
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.04,
              title: shareNumber.toString(),
              color: AppColors.kWhite,
              fontWeight: FontWeight.bold,
            ),
            // Text : Instagram share
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.02,
              title: 'Instagram share',
              color: AppColors.kWhite,
              fontWeight: FontWeight.bold,
            ),
            // Text : share price.
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.03,
              title: '\$$sharePrice',
              color: AppColors.kWhite,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
