import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/pdf_util.dart';
import '../../../../terms/presentation/providers/terms_provider.dart';

class OrderTermsSection extends ConsumerWidget {
  const OrderTermsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 약관 영역
          ..._buildTerms(context, ref),

          const SizedBox(height: 10),
          Text(
            "결제 시 위 내용에 동의한 것으로 간주됩니다.",
            style: context.caption.copyWith(color: AppColors.darkGrey),
          ),
          Text(
            "(주)모딩은 통신판매중개자로서 상품정보 및 거래에 대한 책임을 지지 않습니다.",
            style: context.caption.copyWith(color: AppColors.darkGrey),
          ),
          Divider(),
          Text(
            "위 주문 내용을 확인하였으며, 회원 본인은 개인정보 이용 및 제공, 결제에 동의합니다.",
            style: context.caption.copyWith(color: AppColors.darkGrey),
          ),
        ],
      ),
    );
  }

  /// 약관 리스트 생성
  List<Widget> _buildTerms(BuildContext context, WidgetRef ref) {
    final items = ref
        .read(termsProvider.notifier)
        .orderTerms; // 🔥 이미 만들어둔 그룹 사용

    return items.map((item) {
      return _TermRow(
        label: item.typeLabel,
        onTap: () => PdfUtil.openPdf(context, item.pdfUrl, item.typeLabel),
      );
    }).toList();
  }
}

class _TermRow extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _TermRow({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: context.caption.copyWith(color: AppColors.darkGrey)),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "보기",
            style: context.caption.copyWith(color: AppColors.darkGrey),
          ),
        ),
      ],
    );
  }
}
