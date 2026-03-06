import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../check_widget.dart';
import '../signup_step2_box.dart';

class BusinessInfoResultSection extends StatelessWidget {
  const BusinessInfoResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupStep2Box(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.businessInfoResultTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          CheckWidget(title: AppStrings.businessName, contents: "모딩식당"),
          CheckWidget(title: AppStrings.businessRepName, contents: "권민욱"),
          CheckWidget(
            title: AppStrings.businessOpenDate,
            contents: "2026.03.06",
          ),
          CheckWidget(title: AppStrings.businessStatus, contents: "정상영업"),
        ],
      ),
    );
  }
}
