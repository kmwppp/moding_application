import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/presentation/widgets/input_widget.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../signup_step2_box.dart';

class InsertEmailSection extends ConsumerWidget {
  const InsertEmailSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(signupStep2ViewModelProvider);
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);
    return SignupStep2Box(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.emailRegistrationTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          InputWidget(
            inputTitle: AppStrings.insertEmail,
            inputHint: AppStrings.pleaseInsertEmail,
            titleTextStyle: context.body,
            onChanged: (String value) {
              notifier.changeEmail(value);
            },
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              AppStrings.useEmailNotification,
              style: context.caption.copyWith(color: AppColors.hintTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
