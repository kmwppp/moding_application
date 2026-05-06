import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/pdf_util.dart';
import 'package:moding_application/features/terms/domain/entities/terms_item_dto.dart';
import 'package:moding_application/features/terms/presentation/providers/terms_provider.dart';

import '../../../../../../core/constants/app_colors.dart';

class HomeCompanyInfoSection extends ConsumerWidget {
  const HomeCompanyInfoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final termsAsync = ref.watch(termsProvider);

    return termsAsync.when(
      loading: () => const SizedBox(),
      error: (_, __) => const SizedBox(),
      data: (_) {
        final items = ref.read(termsProvider.notifier).footerTerms;

        return Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// ✅ 약관 리스트
                if (items.isNotEmpty)
                  Wrap(
                    spacing: 2,
                    runSpacing: 6,
                    children:
                        items
                            .expand(
                              (item) => [
                                _linkText(context, item),
                                _verticalDivider(),
                              ],
                            )
                            .toList()
                          ..removeLast(),
                  ),

                const SizedBox(height: 10),

                Text(
                  "(주)모딩 Moding Inc.",
                  style: context.bodySmall.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Wrap(
                  spacing: 2,
                  runSpacing: 6,
                  children: [
                    _infoText(context, "대표이사 서희진"),
                    _verticalDivider(),
                    _infoText(context, "사업자 등록번호 730-87-03564"),
                    _verticalDivider(),
                    _infoText(context, "통신판매업 제2025-대구달서-1367호"),
                    _verticalDivider(),
                    _infoText(context, "호스팅서비스제공자 (주)모딩"),
                    _verticalDivider(),
                    _infoText(context, "moding_inc@naver.com"),
                    _verticalDivider(),
                    _infoText(context, "대구광역시 달서구 달구벌대로 1870, 7층"),
                  ],
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _linkText(BuildContext context, TermsItemDto item) {
    return GestureDetector(
      onTap: () {
        PdfUtil.openPdf(context, item.pdfUrl, item.typeLabel);
      },
      child: Text(
        item.typeLabel,
        style: context.caption.copyWith(color: AppColors.darkGrey),
      ),
    );
  }

  Widget _infoText(BuildContext context, String text) {
    return Text(
      text,
      style: context.caption.copyWith(color: AppColors.darkGrey),
    );
  }

  Widget _verticalDivider() => Container(
    width: 1,
    height: 12,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    color: Colors.grey.withOpacity(0.5),
  );
}
