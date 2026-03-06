import 'package:flutter/material.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

import '../../../../../core/constants/app_colors.dart';

class CheckWidget extends StatelessWidget {
  final String title;
  final String contents;

  const CheckWidget({super.key, required this.title, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.body),
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            border: Border.all(color: AppColors.darkGrey),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  contents,
                  style: context.body.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Icon(Icons.lock_outline_rounded, color: AppColors.darkGrey),
            ],
          ),
        ),
      ],
    );
  }
}
