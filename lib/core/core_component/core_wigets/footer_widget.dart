import 'package:flutter/material.dart';
import 'package:insta_roi/core/core_component/appbar_component/appbar_field.dart';
import 'package:insta_roi/core/core_component/core_wigets/page_parts.dart';
import 'package:insta_roi/core/navigation.dart';
import 'package:insta_roi/features/buy_followers/presentation/pages/screens/followers_screen.dart';
import 'package:insta_roi/features/buy_likes/presentation/pages/likes_screen.dart';
import 'package:insta_roi/features/home/presentation/widgets/home_text_widget.dart';

import '../../responsiveness/responsive_component/app_padding.dart';
import '../../responsiveness/responsive_component/dimensions.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageParts(
      color: Colors.black54,
      children: [
        //Left part.
        AppPadding.onlyPadding(
          context: context,
          top: 0.15,
          left: 0.05,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: Dimensions.setWidth(context: context, width: 0.28),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                HomeTextWidget(
                  fontSize: 0.04,
                  title: 'Boost Your Instagram',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left,
                ),
                AppBarField.buildNavItem(
                  Icons.favorite,
                  'BUY INSTAGRAM LIKES',
                  () {
                    Navigation.pushNavigatorRoute(
                      context: context,
                      page: LikesScreen(),
                    );
                  },
                ),
                AppBarField.buildNavItem(
                  Icons.people_alt,
                  'BUY INSTAGRAM Followers',
                  () {
                    Navigation.pushNavigatorRoute(
                      context: context,
                      page: FollowersScreen(),
                    );
                  },
                ),
                AppBarField.buildNavItem(
                  Icons.favorite,
                  'BUY INSTAGRAM Views',
                  () {
                    Navigation.pushNavigatorRoute(
                      context: context,
                      page: LikesScreen(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),

        //Centre part.
        AppPadding.onlyPadding(
          context: context,
          top: 0.15,
          left: 0.02,
          right: 0.02,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: Dimensions.setWidth(context: context, width: 0.28),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [],
            ),
          ),
        ),

        //Right part.
        AppPadding.onlyPadding(
          context: context,
          top: 0.15,
          left: 0.02,
          right: 0.02,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: Dimensions.setWidth(context: context, width: 0.28),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                // Text :
                HomeTextWidget(
                  fontSize: 0.04,
                  title: 'INSTA ROI',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left,
                ),
                // Text :
                HomeTextWidget(
                  fontSize: 0.03,
                  title: 'Buy Instagram likes and followers from InstaRoi.com, Instant delivery of Likes and Followers with Non drop guarantee and 24/7 Support chat.',
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
