import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/features/buy_likes/presentation/widgets/likes_text_widget.dart';

import '../../../../core/responsiveness/responsive_component/dimensions.dart';

class LikesExpansionTileWidget extends StatelessWidget {
  const LikesExpansionTileWidget({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: Dimensions.setWidth(context: context, width: 0.6),
      ),
      child: ExpansionTile(
        title: LikesTextWidget(
          fontSize: 0.05,
          title: title,
          textAlign: TextAlign.left,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        leading: Icon(Icons.add, color: Colors.grey, size: 20),
        childrenPadding:AppPadding.symmetricPaddingGeometry(
          context: context,
          vertical: 0.02,
        ),
        children: children,
      ),
    );
  }
}
