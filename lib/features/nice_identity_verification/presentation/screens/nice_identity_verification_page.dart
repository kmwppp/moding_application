import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/loading_indicator.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';
import 'package:moding_application/features/nice_identity_verification/presentation/providers/nice_callback_result_provider.dart';
import 'package:moding_application/features/nice_identity_verification/presentation/providers/nice_identity_verification_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class NiceIdentityVerificationPage extends ConsumerStatefulWidget {
  const NiceIdentityVerificationPage({
    super.key,
    required this.type,
    required this.source,
  });

  final NiceIdentityVerificationType type;
  final NiceVerificationSource source;

  @override
  ConsumerState<NiceIdentityVerificationPage> createState() =>
      _NiceIdentityVerificationPageState();
}

class _NiceIdentityVerificationPageState
    extends ConsumerState<NiceIdentityVerificationPage> {
  ProviderSubscription<String?>? _errorSubscription;
  ProviderSubscription<NiceIdentityVerificationResult?>? _resultSubscription;
  bool _hasOpenedBrowser = false;

  @override
  void initState() {
    super.initState();

    // app_links로 수신된 결과를 감지하여 pop (스택 보존)
    _resultSubscription = ref.listenManual<NiceIdentityVerificationResult?>(
      niceCallbackResultProvider,
      (previous, next) {
        if (next == null || !mounted) return;
        ref.read(niceCallbackResultProvider.notifier).clear();
        context.pop(next);
      },
    );

    _errorSubscription = ref.listenManual<String?>(
      niceIdentityVerificationViewModelProvider.select(
        (value) => value.errorMessage,
      ),
      (previous, next) async {
        if (next == null || next.isEmpty || !mounted) return;
        await CommonDialog.show(
          context,
          title: '오류',
          isSuccess: false,
          message: next,
        );
        if (!mounted) return;
        ref
            .read(niceIdentityVerificationViewModelProvider.notifier)
            .clearErrorMessage();
      },
    );
    Future.microtask(
      () => ref
          .read(niceIdentityVerificationViewModelProvider.notifier)
          .initialize(widget.type),
    );
  }

  @override
  void dispose() {
    _errorSubscription?.close();
    _resultSubscription?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(niceIdentityVerificationViewModelProvider);

    if (state.authUrl != null && !_hasOpenedBrowser) {
      _hasOpenedBrowser = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _openAuthUrl(state.authUrl!);
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('본인인증')),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: AppBoxStyles.borderBox,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '브라우저에서 본인인증을 진행해주세요.',
                          style: context.bodyLarge.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '인증이 완료되면 앱으로 자동 복귀합니다.',
                          style: context.body.copyWith(
                            color: AppColors.darkGrey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: state.authUrl == null
                              ? null
                              : () => _openAuthUrl(state.authUrl!),
                          child: CustomButton(
                            title: '본인인증 다시 열기',
                            boxColor: AppColors.primary,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (state.isInitializing)
            Positioned.fill(
              child: ColoredBox(
                color: Colors.white.withValues(alpha: 0.75),
                child: const Center(child: LoadingIndicator()),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _openAuthUrl(String authUrl) async {
    final uri = Uri.tryParse(authUrl);
    if (uri == null) {
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: '알 수 없는 오류가 발생했습니다.',
      );
      return;
    }

    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched && mounted) {
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: '본인인증 화면을 열 수 없습니다.',
      );
    }
  }
}
