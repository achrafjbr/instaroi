import 'package:flutter/material.dart';

import 'appbar_field.dart';

class FixedAppbar {
  static  PreferredSize  navigationBar(){
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        height: 500,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.black,
          gradient: LinearGradient(
            begin:Alignment.centerLeft,
            end:Alignment.centerRight,
            tileMode: TileMode.mirror,
            colors: [
              Colors.pinkAccent,
              Colors.blueAccent,
              Colors.deepPurpleAccent,
            ],
          )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Logo
            Row(
              children: [
                Icon(Icons.dangerous, color: Colors.purple, size: 30), // Custom logo
                const SizedBox(width: 8),
                const Text("TikRoyal", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),

            // Navigation Items
            Row(
              children: [
                AppBarField.navItem(Icons.favorite, "Buy TikTok Likes"),
                AppBarField.navItem(Icons.people, "Buy TikTok Followers"),
                AppBarField.navItem(Icons.tiktok, "More"),
                AppBarField.navItem(Icons.support_agent, "Support"),
                AppBarField.cartIcon(),
              ],
            ),
          ],
        ),
      ),
    );
  }


}





