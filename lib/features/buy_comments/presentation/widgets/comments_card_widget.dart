import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/features/buy_likes/presentation/widgets/likes_text_widget.dart';

class CommentsCardWidget extends StatelessWidget {
  const CommentsCardWidget({
    super.key,
    required this.commentNumber,
    required this.commentPrice,
    this.onTap,
  });
  final int commentNumber;
  final double commentPrice;
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
            // Text :comments number
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.04,
              title: commentNumber.toString(),
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            // Text : Instagram like
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.02,
              title: 'Instagram comments',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            // Text : comment price.
            LikesTextWidget(
              textAlign: TextAlign.center,
              fontSize: 0.03,
              title: '\$${commentPrice}',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}