import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewBusinessRegistrationLookupSection extends ConsumerWidget {
  const SignupNewBusinessRegistrationLookupSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(signupNewViewModelProvider.notifier);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('사업자 등록번호 조회'),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SignupNewLabeledTextField(
                  label: '사업자 등록번호',
                  hint: '숫자만 입력해주세요.',
                  inputType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: notifier.updateBusinessRegistrationNumber,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () async {
                  await CommonDialog.show(
                    context,
                    title: '안내',
                    message: '사업자 등록번호 조회 API 연결 후 동작할 예정입니다.',
                  );
                },
                child: SizedBox(
                  width: 80,
                  child: CustomButton(
                    title: '조회',
                    boxColor: AppColors.primary,
                    textColor: Colors.white,
                    textStyle: context.bodySmall.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    paddingVertical: 8,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
