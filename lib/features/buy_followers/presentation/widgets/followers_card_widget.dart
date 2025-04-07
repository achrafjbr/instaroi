import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/features/buy_likes/presentation/widgets/likes_text_widget.dart';

class FollowersCardWidget extends StatelessWidget {
  const FollowersCardWidget({
    super.key,
    required this.followerNumber,
    required this.followerPrice,
    this.onTap,
  });
  final int followerNumber;
  final double followerPrice;
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
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            // Text :followers number
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.04,
              title: followerNumber.toString(),
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            // Text : Instagram follower
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.02,
              title: 'Instagram followers',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            // Text : follower price.
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.03,
              title: '\$$followerPrice',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}