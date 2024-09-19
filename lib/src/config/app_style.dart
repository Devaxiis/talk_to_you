import 'package:flutter/material.dart';
import 'package:speak_with_you/src/utils/app_colors.dart';

sealed class AppStyle {
  static const appBarTitleST = TextStyle(
    fontFamily: "Syne",
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.clWhite
  );
  static const startTitleST = TextStyle(
    fontFamily: "Syne",
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.clWhite
  );
  static const partOneST = TextStyle(
    fontFamily: "Syne",
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: AppColors.clWhite
  );
  static const partCardST = TextStyle(
    fontFamily: "Syne",
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: AppColors.clWhite
  );
  static const partTitleST = TextStyle(
    fontFamily: "Syne",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.clWhite
  );
  static const partSuggestST = TextStyle(
    fontFamily: "Syne",
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.clWhite
  );
  static const questionST = TextStyle(
    fontFamily: "Syne",
    fontSize: 25,
    fontWeight: FontWeight.w800,
    color: AppColors.clWhite
  );
}
