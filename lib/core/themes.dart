import 'package:flutter/material.dart';
import 'package:insta_roi/utils/app_colors.dart';

class Themes {
  static ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      appBarTheme: AppBarTheme(backgroundColor: Colors.black54),
      sliderTheme: SliderThemeData(
        trackHeight: 10.0,
        activeTrackColor: AppColors.kSecondaryColor,
        inactiveTrackColor: Colors.grey.shade300,
        overlayColor: Colors.blue.withOpacity(0.2),
        thumbColor: AppColors.kPrimaryColor,
        allowedInteraction: SliderInteraction.tapAndSlide,
      ),
    );
  }
}
