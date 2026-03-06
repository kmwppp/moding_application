import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

extension TextStyleExt on BuildContext {
  TextStyle get bigTitle => AppTextStyles.displayLarge;

  TextStyle get title => AppTextStyles.titleLarge;

  TextStyle get bodyLarge => AppTextStyles.bodyLarge;

  TextStyle get body => AppTextStyles.bodyMedium;

  TextStyle get caption => AppTextStyles.caption;
}

class AppTextStyles {
  // --- Display & Title (크고 강조되는 텍스트) ---
  static const displayLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  ); // 기존 mainTitle

  static const titleLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  // --- Body (일반 본문) ---
  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );

  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );

  // --- Label & Caption (정보성, 보조 텍스트) ---
  static const labelMedium = TextStyle(
    fontSize: 12,
    color: AppColors.hintTextColor,
  );

  static const caption = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  ); // 기존 homeCategoryTitle, productItemCupnote

  static const captionAccent = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
    decoration: TextDecoration.underline,
    decorationColor: Colors.white,
    decorationThickness: 2,
    decorationStyle: TextDecorationStyle.solid,
  );

  // --- Specialized (특수 목적 - 강조/버튼/가격) ---
  static const buttonLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const hintText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.hintTextColor,
  );
}
