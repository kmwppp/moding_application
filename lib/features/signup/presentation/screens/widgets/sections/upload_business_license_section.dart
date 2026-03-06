import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../signup_step2_box.dart';

class UploadBusinessLicenseSection extends StatelessWidget {
  const UploadBusinessLicenseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupStep2Box(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.uploadBusinessLicenseTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          ConfirmButton(buttonTitle: AppStrings.uploadBusinessLicense),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.mediumGrey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(Icons.photo, size: 60),
            ),
          ),
        ],
      ),
    );
  }
}
