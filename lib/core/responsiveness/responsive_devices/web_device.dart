import 'package:flutter/material.dart';
import 'package:insta_roi/core/core_component/appbar_component/fixed_appbar.dart';
import 'package:insta_roi/features/home/presentation/pages/home_screen.dart';



class WebDevice extends StatefulWidget {
  const WebDevice({super.key});

  @override
  State<WebDevice> createState() => _WebDeviceState();
}

class _WebDeviceState extends State<WebDevice> {
  // Current page (default: HomeScreen)
  Widget currentPage = const HomeScreen();

  // Function to change pages
  void changePage(Widget page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FixedAppbar.navigationBar(changePage),
      body: currentPage,
    );
  }



}
