import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/app_version/data/repositories/app_version_repository_impl.dart';
import 'package:moding_application/features/app_version/domain/entities/app_version_response_dto.dart';
import 'package:moding_application/features/app_version/domain/enums/app_update_type.dart';
import 'package:moding_application/features/app_version/domain/enums/app_version_platform.dart';
import 'package:moding_application/features/app_version/domain/utils/app_version_checker.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSplashScreen extends ConsumerStatefulWidget {
  const CustomSplashScreen({super.key});

  @override
  ConsumerState<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends ConsumerState<CustomSplashScreen> {
  static const _androidPackageName = 'com.moding.application';
  static const _iosAppStoreSearchUrl =
      'https://apps.apple.com/kr/search?term=moding';

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  Future<void> _startTimer() async {
    FlutterNativeSplash.remove();
    final canProceed = await _checkAppVersionAndHandle();
    if (!mounted || !canProceed) return;

    if (mounted) {
      context.go('/main');
    }
  }

  Future<bool> _checkAppVersionAndHandle() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final platform = Platform.isIOS
          ? AppVersionPlatform.ios
          : AppVersionPlatform.android;
      final response = await ref
          .read(appVersionRepositoryProvider)
          .getAppVersion(
            platform: platform.apiValue,
            currentVersion: packageInfo.version,
          );

      if (!mounted) return false;
      if (response?.data == null) return true;

      final updateType = AppVersionChecker.resolveUpdateType(
        currentVersion: packageInfo.version,
        versionInfo: response!.data!,
      );

      switch (updateType) {
        case AppUpdateType.force:
          await _showUpdateDialog(
            title: '필수 업데이트',
            primaryButtonText: '업데이트',
            message: _buildUpdateMessage(
              defaultMessage: '필수 업데이트가 있습니다.',
              response: response,
            ),
            onPrimaryTap: _openStore,
          );
          return false;
        case AppUpdateType.optional:
          final shouldUpdate = await _showOptionalUpdateDialog(
            message: _buildUpdateMessage(
              defaultMessage: '새로운 버전이 있습니다.',
              response: response,
            ),
          );
          if (shouldUpdate == true) {
            await _openStore();
          }
          return shouldUpdate != true;
        case AppUpdateType.none:
          return true;
      }
    } catch (_) {
      return true;
    }
  }

  String _buildUpdateMessage({
    required String defaultMessage,
    required AppVersionResponseDto response,
  }) {
    final releaseNotes = response.data?.releaseNotes.trim() ?? '';
    if (releaseNotes.isEmpty) return defaultMessage;
    return '$defaultMessage\n\n$releaseNotes';
  }

  Future<void> _showUpdateDialog({
    required String title,
    required String message,
    required String primaryButtonText,
    required Future<void> Function() onPrimaryTap,
  }) async {
    await AppBottomSheet.show<void>(
      context: context,
      title: title,
      isDismissible: false,
      enableDrag: false,
      child: _UpdateBottomSheetContent(
        message: message,
        primaryButtonText: primaryButtonText,
        onPrimaryTap: onPrimaryTap,
      ),
    );
  }

  Future<bool?> _showOptionalUpdateDialog({required String message}) {
    return AppBottomSheet.show<bool>(
      context: context,
      title: '업데이트 안내',
      isDismissible: false,
      enableDrag: false,
      child: _OptionalUpdateBottomSheetContent(message: message),
    );
  }

  Future<void> _openStore() async {
    if (Platform.isAndroid) {
      final marketUri = Uri.parse('market://details?id=$_androidPackageName');
      final webUri = Uri.parse(
        'https://play.google.com/store/apps/details?id=$_androidPackageName',
      );

      if (await canLaunchUrl(marketUri)) {
        await launchUrl(marketUri, mode: LaunchMode.externalApplication);
        return;
      }

      await launchUrl(webUri, mode: LaunchMode.externalApplication);
      return;
    }

    final appStoreUri = Uri.parse(_iosAppStoreSearchUrl);
    await launchUrl(appStoreUri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // App 테마와 동일하게 설정됨
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo4.png", width: 140),
            const SizedBox(height: 30),
            // Text(
            //   "모딩에 오신것을 환영합니다.",
            //   style: context.title.copyWith(color: Colors.black),
            // ),
            // const SizedBox(height: 30),
            // 로딩 애니메이션
            const CircularProgressIndicator(
              strokeWidth: 4,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

class _UpdateBottomSheetContent extends StatelessWidget {
  const _UpdateBottomSheetContent({
    required this.message,
    required this.primaryButtonText,
    required this.onPrimaryTap,
  });

  final String message;
  final String primaryButtonText;
  final Future<void> Function() onPrimaryTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: context.body.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () async {
              Navigator.of(context).pop();
              await onPrimaryTap();
            },
            child: SizedBox(
              width: double.infinity,
              height: 32,
              child: CustomButton(
                title: primaryButtonText,
                boxColor: AppColors.primary,
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OptionalUpdateBottomSheetContent extends StatelessWidget {
  const _OptionalUpdateBottomSheetContent({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: context.body.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(false),
                  child: SizedBox(
                    height: 32,
                    child: CustomButton(
                      title: '나중에 하기',
                      boxColor: Colors.white,
                      textColor: AppColors.darkGrey,
                      borderColor: AppColors.mediumGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(true),
                  child: SizedBox(
                    height: 32,
                    child: CustomButton(
                      title: '업데이트하기',
                      boxColor: AppColors.primary,
                      textColor: Colors.white,
                    ),
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
