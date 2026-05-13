import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewTaxInvoiceEmailSection extends ConsumerWidget {
  const SignupNewTaxInvoiceEmailSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(signupNewViewModelProvider.notifier);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('세금계산서 수신 이메일'),
          const SizedBox(height: 12),
          SignupNewLabeledTextField(
            label: '이메일',
            hint: '이메일을 입력해주세요.',
            inputType: TextInputType.emailAddress,
            onChanged: notifier.updateTaxInvoiceEmail,
          ),
        ],
      ),
    );
  }
}
