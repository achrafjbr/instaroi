
import 'package:flutter/material.dart';

class Themes{

  static ThemeData theme(){
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }
}