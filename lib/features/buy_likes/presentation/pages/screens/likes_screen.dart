import 'package:flutter/material.dart';
import 'package:insta_roi/core/core_component/appbar_component/fixed_appbar.dart';
import 'package:insta_roi/core/core_component/core_wigets/page_parts.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FixedAppbar.navigationBar(),

      body: ListView(
        children: [PageParts(color: Colors.purpleAccent, children: [])],
      ),
    );
  }
}
