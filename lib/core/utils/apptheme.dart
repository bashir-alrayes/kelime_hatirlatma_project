import 'package:flutter/material.dart';
import 'package:kelime_hatirlatma_project/core/utils/app_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      // fontFamily: 'PlayfairDisplay',
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 20,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.grey,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
