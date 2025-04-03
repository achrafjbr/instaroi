import 'package:flutter/material.dart';
import 'package:insta_roi/features/buy_followers/presentation/pages/screens/followers_screen.dart';
import 'package:insta_roi/features/home/presentation/pages/home_screen.dart';
import 'package:insta_roi/features/more/presentation/pages/more_screen.dart';
import 'package:insta_roi/features/support/presentation/pages/support_screen.dart';
import '../../../features/buy_likes/presentation/pages/likes_screen.dart';
import 'appbar_field.dart';

class FixedAppbar {
  static PreferredSize navigationBar(void Function(Widget) onTap) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        width: 400,
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
            // Logo
            InkWell(
              onTap: ()=>onTap(const HomeScreen()),
              child: Row(
                children: [
                  const Icon(Icons.kayaking_outlined, color:
                  Colors.purple, size: 30,),
                  const SizedBox(width: 8),
                  const Text(
                    "InstaRoi",
                    style: TextStyle(
                      color: Colors.white,
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
                AppBarField.buildNavItem(
                  Icons.favorite,
                  "Buy Instagram Likes",
                  () => onTap(const LikesScreen()),
                ),
                AppBarField.buildNavItem(
                  Icons.people,
                  "Buy TikTok Followers",
                      () => onTap(const FollowersScreen()),
                ),
                AppBarField.buildNavItem(
                  Icons.tiktok,
                  "More",
                      () => onTap(const MoreScreen()),
                ),
                AppBarField.buildNavItem(
                  Icons.support_agent,
                  "Support",
                      () => onTap(const SupportScreen()),
                ),

                AppBarField.cartIcon(onTap: (){}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
