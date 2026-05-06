import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class PaymentRatioRow extends StatelessWidget {
  const PaymentRatioRow({
    super.key,
    required this.title,
    required this.content,
    this.isContentPoint = false,
  });

  final String title;
  final String content;
  final bool isContentPoint;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: context.body.copyWith(color: AppColors.darkGrey),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            content,
            style: context.body.copyWith(
              color: isContentPoint ? AppColors.pointColor : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
