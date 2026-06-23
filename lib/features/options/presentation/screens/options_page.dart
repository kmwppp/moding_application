import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';
import 'package:package_info_plus/package_info_plus.dart';

class OptionsPage extends ConsumerStatefulWidget {
  const OptionsPage({super.key});

  @override
  ConsumerState<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends ConsumerState<OptionsPage> {
  String _appVersion = '-';

  @override
  void initState() {
    super.initState();
    _loadAppVersion();
    Future.microtask(
      () => ref
          .read(editMyInfoViewModelProvider.notifier)
          .getNotificationSettings(),
    );
  }

  Future<void> _loadAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    if (!mounted) return;

    setState(() {
      _appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editMyInfoViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: '설정'),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    _OptionsSwitchRow(
                      title: '전체 알림',
                      value: state.notificationEnabled ?? false,
                      isLoading: state.isNotificationLoading,
                      onChanged: (value) async {
                        final response = await ref
                            .read(editMyInfoViewModelProvider.notifier)
                            .patchNotificationSettings(value);
                        if (!context.mounted || response.success) {
                          return;
                        }
                        await CommonDialog.show(
                          context,
                          title: '오류',
                          isSuccess: false,
                          message: response.message.isEmpty
                              ? '알림 설정 변경에 실패했습니다.'
                              : response.message,
                        );
                      },
                    ),
                    _OptionsRow(title: '앱 버전', trailing: _appVersion),
                    _OptionsRow(
                      title: '오픈소스 라이센스 확인',
                      trailing: '보기',
                      onTap: () {
                        showLicensePage(
                          context: context,
                          applicationName: '모딩',
                          applicationVersion: _appVersion,
                          applicationIcon: Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Image.asset(
                              'assets/images/logo4.png',
                              width: 72,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionsSwitchRow extends StatelessWidget {
  const _OptionsSwitchRow({
    required this.title,
    required this.value,
    required this.onChanged,
    required this.isLoading,
  });

  final String title;
  final bool value;
  final bool isLoading;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.lightGrey, width: 1),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: context.body.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              value: value,
              onChanged: isLoading ? null : onChanged,
              activeThumbColor: AppColors.primary,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}

class _OptionsRow extends StatelessWidget {
  const _OptionsRow({required this.title, required this.trailing, this.onTap});

  final String title;
  final String trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.lightGrey, width: 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                style: context.body.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              trailing,
              style: context.body.copyWith(color: AppColors.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
