import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';
import 'package:moding_application/features/signup/presentation/screens/widgets/signup_step2_box.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../providers/step2_providers/signup_step2_state.dart';

class BusinessTypeSection extends ConsumerWidget {
  const BusinessTypeSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);

    return SignupStep2Box(
      child: Column(
        spacing: 14,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.businessTypeTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            spacing: 14,
            children: [
              _BusinessTypeButton(
                notifier: notifier,
                state: state,
                context: context,
                buttonText: AppStrings.soleProprietor,
                businessTypeNum: 1,
              ),
              _BusinessTypeButton(
                notifier: notifier,
                state: state,
                context: context,
                buttonText: AppStrings.corporateBusiness,
                businessTypeNum: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Expanded _BusinessTypeButton({
    required SignupStep2ViewModel notifier,
    required SignupStep2State state,
    required BuildContext context,
    required String buttonText,
    required int businessTypeNum,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          notifier.changeBusinessType(businessTypeNum);
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: state.businessType == businessTypeNum
                ? AppColors.primary
                : null,
            border: Border.all(color: AppColors.boxBorderGrey),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: context.bodyLarge.copyWith(
                color: state.businessType == businessTypeNum
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
