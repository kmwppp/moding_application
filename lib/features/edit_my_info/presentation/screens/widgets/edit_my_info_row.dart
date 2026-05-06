import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class EditMyInfoRow extends StatelessWidget {
  const EditMyInfoRow({super.key, required this.title, required this.content});

  final String title;
  final String content;

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
        Expanded(flex: 2, child: Text(content, style: context.bodySmall)),
      ],
    );
  }
}
