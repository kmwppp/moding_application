import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/core/utils/pdf_util.dart';
import 'package:moding_application/features/signup_new/presentation/providers/signup_new_viewmodel.dart';
import 'package:moding_application/features/signup_new/presentation/screens/widgets/signup_new_common_widgets.dart';
import 'package:moding_application/features/terms/domain/entities/terms_item_dto.dart';
import 'package:moding_application/features/terms/presentation/providers/terms_provider.dart';

class SignupNewTermsAgreementSection extends ConsumerWidget {
  final AsyncValue<TermsDto> termsAsync;

  const SignupNewTermsAgreementSection({super.key, required this.termsAsync});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupNewViewModelProvider);
    final notifier = ref.read(signupNewViewModelProvider.notifier);

    return SignupNewSectionBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignupNewSectionTitle('약관 동의'),
          const SizedBox(height: 12),
          SignupNewCheckboxRow(
            value: state.agreedRequiredTerms,
            title: '필수 약관 및 개인정보 처리 안내에 모두 동의합니다.',
            trailing: GestureDetector(
              onTap: () {
                _showTermsSheet(
                  context: context,
                  ref: ref,
                  termsAsync: termsAsync,
                );
              },
              child: Text(
                '[보기]',
                style: context.bodySmall.copyWith(color: AppColors.darkGrey),
              ),
            ),
            onTap: () {
              notifier.toggleRequiredTerms(!state.agreedRequiredTerms);
            },
          ),
          const SizedBox(height: 8),
          const SignupNewTermsSummaryList(),
          // const SizedBox(height: 12),
          // SignupNewCheckboxRow(
          //   value: state.agreedMarketingTerms,
          //   title: '마케팅 정보 수신 동의 (선택)',
          //   onTap: () {
          //     notifier.toggleMarketingTerms(!state.agreedMarketingTerms);
          //   },
          // ),
        ],
      ),
    );
  }

  void _showTermsSheet({
    required BuildContext context,
    required WidgetRef ref,
    required AsyncValue<TermsDto> termsAsync,
  }) {
    AppBottomSheet.show(
      context: context,
      title: '약관 보기',
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: termsAsync.when(
          data: (_) {
            final terms = ref.read(termsProvider.notifier).signupTerms;

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: terms
                  .map(
                    (item) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(item.typeLabel, style: context.body),
                      trailing: Text(
                        '보기',
                        style: context.bodySmall.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      onTap: () =>
                          PdfUtil.openPdf(context, item.pdfUrl, item.typeLabel),
                    ),
                  )
                  .toList(),
            );
          },
          loading: () => const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stackTrace) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text('약관 정보를 불러오지 못했습니다.', style: context.body),
          ),
        ),
      ),
    );
  }
}
