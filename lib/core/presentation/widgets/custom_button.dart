import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_colors.dart';

import '../../../../../core/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.paddingVertical = 3,
    required this.boxColor,
    required this.textColor,
    this.textStyle = AppTextStyles.bodyMedium,
    this.borderColor = AppColors.primary,
  });

  final String title;
  final double paddingVertical;
  final Color boxColor;
  final Color textColor;
  final TextStyle textStyle;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: paddingVertical),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: boxColor,
        border: Border.all(color: borderColor),
      ),
      child: Text(title, style: textStyle.copyWith(color: textColor)),
    );
  }
}
