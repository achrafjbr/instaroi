import 'package:flutter/material.dart';

class AppBarField {
  // Helper Widget for Navigation Items
 static Widget buildNavItem(IconData icon, String label, VoidCallback onTap)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  // Cart Icon with Notification
  static Widget cartIcon({void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Icon(Icons.shopping_cart, color: Colors.white, size: 24),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(minWidth: 15, minHeight: 15),
              child: const Text(
                "0",
                style: TextStyle(color: Colors.white, fontSize: 7),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
