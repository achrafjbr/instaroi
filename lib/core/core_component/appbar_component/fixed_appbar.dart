import 'package:flutter/material.dart';
import 'package:insta_roi/core/core_component/appbar_component/popup_menu.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/app_padding.dart';
import 'package:insta_roi/core/responsiveness/responsive_component/dimensions.dart';
import 'package:insta_roi/features/buy_comments/presentation/pages/comments_screen.dart';
import 'package:insta_roi/features/buy_followers/presentation/pages/followers_screen.dart';
import 'package:insta_roi/features/buy_shares/presentation/pages/shares_screen.dart';
import 'package:insta_roi/features/buy_views/presentation/pages/views_screen.dart';
import 'package:insta_roi/features/home/presentation/pages/home_screen.dart';
import 'package:insta_roi/features/support/presentation/pages/support_screen.dart';
import '../../../features/buy_likes/presentation/pages/likes_screen.dart';
import '../../../utils/app_colors.dart';
import '../../manager/navigation/navigation_cubit.dart';
import 'appbar_field.dart';

class FixedAppbar {
  static PreferredSize navigationBar(
    void Function(Widget) onTap,
    BuildContext context,
  ) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        Dimensions.setHeight(context: context, height: 0.15),
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: Dimensions.setHeight(context: context, height: 0.15),
        //padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.pinkAccent,
              Colors.blueAccent,
              Colors.deepPurpleAccent,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Logo & Navigator for home screen
            InkWell(
              onTap: () => onTap(const HomeScreen()),
              child: Row(
                children: [
                  const Icon(
                    Icons.kayaking_outlined,
                    color: Colors.purple,
                    size: 30,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "InstaRoi",
                    style: TextStyle(
                      color: AppColors.kWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Navigation Items
            Row(
              children: [
                // Navigator for likes screen
                AppBarField.buildNavItem(
                  Icons.favorite,
                  "Buy Instagram Likes",
                  () => onTap(const LikesScreen()),
                ),
                // Navigator for followers screen
                AppBarField.buildNavItem(
                  Icons.people,
                  "Buy Instagram Followers",
                  () => onTap(const FollowersScreen()),
                ),


                PopupMenu(onTap: onTap),

                // Navigator for support screen
                AppBarField.buildNavItem(
                  Icons.support_agent,
                  "Support",
                  () => onTap(SupportScreen()),
                ),
                // Navigator for card screen
                AppBarField.cartIcon(onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
