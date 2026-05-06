import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/utils/business_number_formatter.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/presentation/widgets/input_widget.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../core/utils/corporate_number_formatter.dart';
import '../signup_step2_box.dart';

class BusinessCertificationSection extends ConsumerWidget {
  const BusinessCertificationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.watch(signupStep2ViewModelProvider.notifier);
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
            inputType: TextInputType.number,
            inputFormatter: [
              FilteringTextInputFormatter.digitsOnly,
              // 숫자만 입력받게 강제
              BusinessNumberFormatter(),
            ],
            onChanged: (String value) {
              notifier.changeBusinessNum(value);
            },
          ),

          if (state.businessType == 2)
            InputWidget(
              inputTitle: AppStrings.corporationRegistNumber,
              inputHint: AppStrings.pleaseCorporationRegistNumber,
              titleTextStyle: context.body,
              inputType: TextInputType.number,
              inputFormatter: [
                FilteringTextInputFormatter.digitsOnly,
                // 숫자만 입력받게 강제
                CorporateNumberFormatter(),
              ],
              onChanged: (String value) {
                notifier.changeCorporationNum(value);
              },
            ),
          ConfirmButton(buttonTitle: AppStrings.businessRegistVerification),
        ],
      ),
    );
  }
}
