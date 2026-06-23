import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/providers/app_viewmodel_reset.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/account_info_section.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/alcohol_buyer_status_section.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/business_info_section.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/sections/refund_account_info_section.dart';

import '../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../router/enums/notification_type.dart';

class EditMyInfoPage extends ConsumerStatefulWidget {
  const EditMyInfoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditMyInfoPageState();
}

class _EditMyInfoPageState extends ConsumerState<EditMyInfoPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(editMyInfoViewModelProvider.notifier).getMaskingMyInfo();
      ref.read(editMyInfoViewModelProvider.notifier).getAlcoholBuyerStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editMyInfoViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "우리매장 정보 관리"),
            if (state.isLoading && state.maskingMyInfo == null)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              )
            else ...[
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: AccountInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: BusinessInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: RefundAccountInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              const SliverToBoxAdapter(child: AlcoholBuyerStatusSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "고객지원",
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                context.push(
                                  '/notification/${NotificationType.NOTIFICATION.name}',
                                );
                              },
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.lightGrey,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  "공지사항",
                                  style: context.body.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                context.push(
                                  '/notification/${NotificationType.FAQ.name}',
                                );
                              },
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.lightGrey,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  "자주 묻는 질문",
                                  style: context.body.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () => _showDeleteUserDialog(context),
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: TextWithChevron(
                            text: '회원탈퇴',
                            style: context.caption.copyWith(
                              color: AppColors.darkGrey,
                            ),
                            iconSize: 10,
                            spacing: 2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _showDeleteUserDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
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
                Text(
                  '회원탈퇴',
                  style: context.titleMedium.copyWith(
                    color: AppColors.pointColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  '정말 회원탈퇴를 진행하시겠습니까?\n약관에 따라 5년동안 거래정보는 저장됩니다.',
                  style: context.body.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.of(dialogContext).pop(),
                        child: const SizedBox(
                          height: 32,
                          child: CustomButton(
                            title: '닫기',
                            boxColor: AppColors.lightGrey,
                            borderColor: AppColors.lightGrey,
                            textColor: AppColors.darkGrey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          Navigator.of(dialogContext).pop();
                          await _deleteUser();
                        },
                        child: const SizedBox(
                          height: 32,
                          child: CustomButton(
                            title: '탈퇴',
                            boxColor: AppColors.pointColor,
                            borderColor: AppColors.pointColor,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _deleteUser() async {
    final response = await ref
        .read(editMyInfoViewModelProvider.notifier)
        .deleteUser();

    if (!mounted) return;

    if (!response.success) {
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: response.message.isEmpty ? '회원탈퇴에 실패했습니다.' : response.message,
      );
      return;
    }

    if (response.message.isNotEmpty) {
      await CommonDialog.show(context, title: '완료', message: response.message);
      if (!mounted) return;
    }

    await ref.read(tokenStorageProvider).deleteAll();
    resetAppViewModels(ref);
    if (!mounted) return;
    context.go('/main');
  }
}
