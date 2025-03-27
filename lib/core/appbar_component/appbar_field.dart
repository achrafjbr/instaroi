import 'package:flutter/material.dart';

class AppBarField   {

// Helper Widget for Navigation Items
  static Widget  navItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 5),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }

  // Cart Icon with Notification
  static Widget  cartIcon() {
    return Stack(
      children: [
        Icon(Icons.shopping_cart, color: Colors.white, size: 24),
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
            constraints: const BoxConstraints(minWidth: 15, minHeight: 15),
            child: const Text("0", style: TextStyle(color: Colors.white, fontSize: 7), textAlign: TextAlign.center),
          ),
        ),
      ],
    );
  }

}
