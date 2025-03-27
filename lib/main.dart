import 'package:flutter/material.dart';
import 'package:insta_roi/core/themes.dart';

import 'core/responsiveness/responsive_devices/devices.dart';
import 'features/home/presentation/pages/mobile_home_screen.dart';
import 'features/home/presentation/pages/tablet_home_screen.dart';
import 'features/home/presentation/pages/web_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InstaRoi: Buy Likes & Followers',
      theme: Themes.theme(),
      home: Devices(
        web: WebHomeScreen(),
        tablet: TabletHomeScreen(),
        mobile: MobileHomeScreen(),
      ),
    );
  }
}
