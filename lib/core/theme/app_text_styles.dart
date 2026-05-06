import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

extension TextStyleExt on BuildContext {
  TextStyle get bigTitle => AppTextStyles.displayLarge;

  TextStyle get title => AppTextStyles.titleLarge;

  TextStyle get titleMedium => AppTextStyles.titleMedium;
  
  TextStyle get titleSmall => AppTextStyles.titleMedium;

  TextStyle get bodyLarge => AppTextStyles.bodyLarge;

  TextStyle get body => AppTextStyles.bodyMedium;

  TextStyle get bodySmall => AppTextStyles.bodySmall;

  TextStyle get caption => AppTextStyles.caption;

  TextStyle listTitleDynamic(double cardWidth) {
    double size = (cardWidth * 0.11).clamp(13.0, 24.0);
    return AppTextStyles.cardTitle.copyWith(fontSize: size);
  }

  // 세로형 카드 제목용 동적 스타일
  TextStyle lengthCardTitleDynamic(double cardWidth) {
    double size = (cardWidth * 0.09).clamp(11.0, 24.0);
    return AppTextStyles.cardTitle.copyWith(fontSize: size);
  }

  // 세로형 카드 본문용 동적 스타일
  TextStyle lengthCardContentDynamic(double cardWidth) {
    double size = (cardWidth * 0.06).clamp(8.0, 16.0);
    return AppTextStyles.cardContent.copyWith(fontSize: size);
  }

  // 가로형 카드 제목용 동적 스타일
  TextStyle widthCardTitleDynamic(double cardWidth) {
    double size = (cardWidth * 0.08).clamp(11.0, 24.0);
    return AppTextStyles.cardTitle.copyWith(fontSize: size);
  }

  // 가로형 카드 본문용 동적 스타일
  TextStyle widthCardContentDynamic(double cardWidth) {
    double size = (cardWidth * 0.05).clamp(8.0, 16.0);
    return AppTextStyles.cardContent.copyWith(fontSize: size);
  }

  // 카테고리 카드 네임 동적 스타일
  TextStyle categoryTitleDynamic(double cardWidth) {
    double size = (cardWidth * 0.07).clamp(8.0, 16.0);
    return AppTextStyles.cardContent.copyWith(fontSize: size);
  }

  // 상품 디테일 동적 스타일

  TextStyle productTitleLargeDynamic(double cardWidth) {
    double size = (cardWidth * 0.11).clamp(22, 40);
    return AppTextStyles.displayLarge.copyWith(fontSize: size);
  }

  TextStyle productTitleDynamic(double cardWidth) {
    double size = (cardWidth * 0.07).clamp(8.0, 16.0);
    return AppTextStyles.titleLarge.copyWith(fontSize: size);
  }

  TextStyle productContentDynamic(double cardWidth) {
    double size = (cardWidth * 0.07).clamp(16, 22);
    return AppTextStyles.bodyLarge.copyWith(fontSize: size);
  }

  TextStyle productCaptionDynamic(double cardWidth) {
    double size = (cardWidth * 0.065).clamp(12, 18);
    return AppTextStyles.bodyMedium.copyWith(fontSize: size);
  }

  TextStyle productOptionDynamic(double cardWidth) {
    double size = (cardWidth * 0.055).clamp(10, 16);
    return AppTextStyles.bodyMedium.copyWith(fontSize: size);
  }

  TextStyle productOptionCaptionDynamic(double cardWidth) {
    double size = (cardWidth * 0.045).clamp(8, 14);
    return AppTextStyles.bodyMedium.copyWith(fontSize: size);
  }

  TextStyle productOptionCaptionSmallDynamic(double cardWidth) {
    double size = (cardWidth * 0.03).clamp(6, 12);
    return AppTextStyles.bodyMedium.copyWith(fontSize: size);
  }

  /// Search ------------------
  TextStyle searchTitleDynamic(double cardWidth) {
    double size = (cardWidth * 0.06).clamp(12, 16);
    return AppTextStyles.bodyMedium.copyWith(fontSize: size);
  }
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
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const bodyMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const bodySmall = TextStyle(
    fontFamily: 'Pretendard',
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
    fontFamily: 'Pretendard',
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

  ///--------------------------------
  /// Card Style
  ///--------------------------------
  static const cardTitle = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const cardContent = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );
}
