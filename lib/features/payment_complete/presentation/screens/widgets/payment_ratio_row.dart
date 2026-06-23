import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class PaymentRatioRow extends StatelessWidget {
  const PaymentRatioRow({
    super.key,
    required this.title,
    required this.content,
    this.isContentPoint = false,
    this.isVBank = false,
  });

  final String title;
  final String content;
  final bool isContentPoint;
  final bool isVBank;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: context.bodySmall.copyWith(color: AppColors.darkGrey),
          ),
        ),
        if (!isVBank)
          Expanded(
            flex: 2,
            child: Text(
              content,
              style: context.bodySmall.copyWith(
                color: isContentPoint ? AppColors.pointColor : Colors.black,
              ),
            ),
          )
        else
          Expanded(
            flex: 2,
            child: Text(
              content,
              style: context.bodySmall.copyWith(
                color: isContentPoint
                    ? AppColors.pointColor
                    : Colors.blueAccent,
                decoration: TextDecoration.underline,
                decorationColor: isContentPoint
                    ? AppColors.pointColor
                    : Colors.blueAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }
}
