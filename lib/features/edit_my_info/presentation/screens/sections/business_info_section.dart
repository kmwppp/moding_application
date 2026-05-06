import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../widgets/edit_my_info_row.dart';

class BusinessInfoSection extends ConsumerWidget {
  const BusinessInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInfo = ref.watch(editMyInfoViewModelProvider).maskingMyInfo?.data;
    final businessProfile = myInfo?.businessProfile;

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "사업자 정보",
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextWithChevron(
                text: "변경신청",
                style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                iconSize: 10,
              ),
            ],
          ),
          SizedBox(height: 6),
          EditMyInfoRow(
            title: "상호명",
            content: businessProfile?.businessName ?? '-',
          ),
          SizedBox(height: 2),
          EditMyInfoRow(
            title: "주소",
            content: [businessProfile?.address, businessProfile?.addressDetail]
                .where((value) => value != null && value.trim().isNotEmpty)
                .join(' '),
          ),
          SizedBox(height: 2),
          EditMyInfoRow(
            title: "사업자등록번호",
            content: businessProfile?.businessNumber ?? '-',
          ),
          SizedBox(height: 2),
          EditMyInfoRow(
            title: "대표자명",
            content: businessProfile?.ownerName ?? '-',
          ),
          SizedBox(height: 2),
          EditMyInfoRow(title: "이메일", content: myInfo?.email ?? '-'),
          SizedBox(height: 2),
          EditMyInfoRow(
            title: "업태/종목",
            content:
                [
                      businessProfile?.parentCategoryName,
                      businessProfile?.businessCategoryName,
                    ]
                    .where((value) => value != null && value.trim().isNotEmpty)
                    .join(' / '),
          ),
          SizedBox(height: 2),
          EditMyInfoRow(
            title: "사업장 전화번호",
            content: businessProfile?.businessPhone ?? '-',
          ),
        ],
      ),
    );
  }
}
