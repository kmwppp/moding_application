import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../widgets/edit_my_info_row.dart';

class AccountInfoSection extends ConsumerWidget {
  const AccountInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(editMyInfoViewModelProvider).maskingMyInfo?.data;

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "계정 정보",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextWithChevron(
                text: "비밀번호 변경",
                style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                iconSize: 10,
              ),
            ],
          ),
          SizedBox(height: 6),
          EditMyInfoRow(title: "아이디", content: myInfo?.loginId ?? '-'),
          SizedBox(height: 2),
          EditMyInfoRow(title: "사업자명", content: myInfo?.name ?? '-'),
          SizedBox(height: 2),
          EditMyInfoRow(title: "전화번호", content: myInfo?.phone ?? '-'),
        ],
      ),
    );
  }
}
