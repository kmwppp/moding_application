import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/loading_indicator.dart';
import 'package:moding_application/core/theme/app_input_decoration.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/identity_verification/domain/entities/identity_verification_page_params.dart';
import 'package:moding_application/features/identity_verification/presentation/providers/identity_verification_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

class IdentityVerificationPage extends ConsumerWidget {
  const IdentityVerificationPage({
    super.key,
    this.params = const IdentityVerificationPageParams(),
  });

  final IdentityVerificationPageParams params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(identityVerificationViewModelProvider);
    final notifier = ref.read(identityVerificationViewModelProvider.notifier);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                child: GestureDetector(
                  onTap: state.isSubmitting
                      ? null
                      : () async {
                          final result = await notifier.submitReauth();
                          if (!context.mounted) return;

                          if (!result.success) {
                            await CommonDialog.show(
                              context,
                              title: '오류',
                              isSuccess: false,
                              message: result.message,
                            );
                            return;
                          }

                          if (params.successRoute != null &&
                              params.successRoute!.isNotEmpty) {
                            context.replace(params.successRoute!);
                            return;
                          }

                          context.pop(true);
                        },
                  child: CustomButton(
                    title: '확인',
                    boxColor: AppColors.primary,
                    borderColor: AppColors.primary,
                    textColor: Colors.white,
                    paddingVertical: 10,
                    textStyle: context.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  const AppSliverAppbar(title: '본인확인'),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: PaymentCompleteCommonBox(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '비밀번호',
                                style: context.bodyLarge.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                obscureText: true,
                                onChanged: notifier.updatePassword,
                                decoration: AppInputDecoration.focusDecoration(
                                  '비밀번호를 입력하세요.',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (state.isSubmitting)
                Positioned.fill(
                  child: AbsorbPointer(
                    child: Container(
                      color: Colors.black.withValues(alpha: 0.12),
                      child: const Center(child: LoadingIndicator()),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
