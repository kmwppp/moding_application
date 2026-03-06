import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/presentation/widgets/input_widget.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../signup_step2_box.dart';

class BusinessCertificationSection extends StatelessWidget {
  const BusinessCertificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupStep2Box(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.businessCertificationTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          InputWidget(
            inputTitle: AppStrings.businessRegistNumber,
            inputHint: AppStrings.pleaseBusinessRegistNumber,
            titleTextStyle: context.body,
            onChanged: (String value) {},
          ),
          ConfirmButton(buttonTitle: AppStrings.businessRegistVerification),
        ],
      ),
    );
  }
}
