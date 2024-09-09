import 'package:flutter/material.dart';
import 'package:speak_with_you/src/utils/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        useMaterial3: true, 
        scaffoldBackgroundColor: AppColors.cl182d42,
        splashColor: AppColors.clBlue
        
        );
  }
  static ThemeData darkTheme() {
    return ThemeData(
        useMaterial3: true, 
        scaffoldBackgroundColor: AppColors.clBlack,
        splashColor: AppColors.clBlue
        );
  }
}
