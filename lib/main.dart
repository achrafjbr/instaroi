import 'package:flutter/material.dart';
import 'package:insta_roi/core/responsiveness/responsive_devices/mobile_device.dart';
import 'package:insta_roi/core/responsiveness/responsive_devices/tablet_device.dart';
import 'package:insta_roi/core/responsiveness/responsive_devices/web_device.dart';
import 'package:insta_roi/core/themes.dart';
import 'core/responsiveness/responsive_devices/devices.dart';

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
        web: WebDevice(),
        tablet: TabletDevice(),
        mobile: MobileDevice(),
      ),
    );
  }
}
