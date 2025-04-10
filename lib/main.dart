import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_roi/core/manager/navigation/navigation_cubit.dart';
import 'package:insta_roi/core/responsiveness/responsive_devices/mobile_device.dart';
import 'package:insta_roi/core/responsiveness/responsive_devices/tablet_device.dart';
import 'package:insta_roi/core/responsiveness/responsive_devices/web_device.dart';
import 'package:insta_roi/core/themes.dart';
import 'package:insta_roi/features/buy_likes/presentation/manager/likes_cubit.dart';
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
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>NavigationCubit()),
          BlocProvider(create: (context)=>LikesCubit()),
        ],
        child: Devices(
          web: WebDevice(),
          tablet: TabletDevice(),
          mobile: MobileDevice(),
        ),
      ),
    );
  }
}
