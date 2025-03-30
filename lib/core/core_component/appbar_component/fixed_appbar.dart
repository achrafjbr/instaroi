import 'package:flutter/material.dart';
import 'package:insta_roi/core/navigation.dart';
import 'package:insta_roi/core/routes.dart';
import 'package:insta_roi/features/buy_likes/presentation/pages/screens/likes_screen.dart';

import 'appbar_field.dart';

class FixedAppbar {
  static PreferredSize navigationBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        height: 500,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.black,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            tileMode: TileMode.mirror,
            colors: [
              Colors.pinkAccent,
              Colors.blueAccent,
              Colors.deepPurpleAccent,
            ],
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Logo
            Row(
              children: [
                Icon(Icons.dangerous, color: Colors.purple, size: 30),
                // Custom logo
                const SizedBox(width: 8),
                const Text(
                  "TikRoyal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            // Navigation Items
            Row(
              children: [
                AppBarField.navItem(
                  Icons.favorite,
                  "Buy Instagram Likes",
                  onTap: () {
                    // Navigate to screen for buy instagram likes.
                    Navigation.pushNavigatorRoute(
                      context: context,
                      page: LikesScreen(),
                    );
                  },
                ),
                AppBarField.navItem(
                  Icons.people,
                  "Buy TikTok Followers",
                  onTap: () {},
                ),
                AppBarField.navItem(Icons.tiktok, "More", onTap: () {}),
                AppBarField.navItem(
                  Icons.support_agent,
                  "Support",
                  onTap: () {},
                ),
                AppBarField.cartIcon(onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
