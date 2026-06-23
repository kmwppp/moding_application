import 'package:flutter/material.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';

class SignupNewBusinessIntroSection extends StatelessWidget {
  const SignupNewBusinessIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignupNewSectionBox(child: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SignupNewSectionTitle('사업자 정보 등록'),
        const SizedBox(height: 10),
        Text('모딩은 사업자 회원 전용 서비스입니다.', style: context.body),
        const SizedBox(height: 4),
        Text(
          '주문, 배송 및 증빙 처리를 위해 사업자 정보를 등록해 주세요.',
          style: context.body.copyWith(color: AppColors.darkGrey),
        ),
      ],
    );
  }
}
