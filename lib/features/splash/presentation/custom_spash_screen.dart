import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/app_version/data/repositories/app_version_repository_impl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/app_colors.dart';

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
    // final shouldBlockForUpdate = await _checkRequiredUpdate();
    // if (!mounted || shouldBlockForUpdate) return;

    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      context.go('/main');
    }
  }

  Future<bool> _checkRequiredUpdate() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final platform = Platform.isIOS ? 'ios' : 'android';
    final response = await ref
        .read(appVersionRepositoryProvider)
        .getAppVersion(platform: platform, currentVersion: packageInfo.version);

    if (response.success) {
      return false;
    }

    if (!mounted) return true;

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '필수 업데이트',
                  style: TextStyle(
                    color: AppColors.pointColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  '필수 업데이트가 있습니다.',
                  // response.message.isEmpty
                  //     ? '필수 업데이트가 있습니다.'
                  //     : response.message,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: _openStore,
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('업데이트'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    return true;
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
