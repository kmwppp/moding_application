import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../seller_web/presentation/utils/open_seller_web_page.dart';
import '../../../domain/enums/approval_status.dart';
import '../../../domain/enums/role.dart';

class TopProfileSection extends ConsumerWidget {
  const TopProfileSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileViewModelProvider);
    final profile = state.profileSummary?.data;
    final role = profile?.role;
    final approvalStatus = profile?.approvalStatus;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primary, AppColors.primary, AppColors.pointColor],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${state.profileSummary?.data.businessName} 사장님 반갑습니다.\n오늘도 대박나세요!",
              style: context.bodyLarge.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () async {
                if (role == null) return;

                if (role == Role.SELLER) {
                  await openSellerWebPage(
                    context: context,
                    container: ProviderScope.containerOf(
                      context,
                      listen: false,
                    ),
                  );
                  return;
                }

                switch (approvalStatus) {
                  case null:
                    final result = await context.push<bool>(
                      '/seller_conversion',
                    );
                    if (result == true) {
                      ref
                          .read(profileViewModelProvider.notifier)
                          .getProfileSummary();
                    }
                    break;
                  case ApprovalStatus.PENDING:
                    context.push('/seller_conversion_check');
                    break;
                  case ApprovalStatus.REJECTED:
                    context.push(
                      '/seller_conversion_check',
                      extra: approvalStatus,
                    );
                    break;
                  case ApprovalStatus.APPROVED:
                    await openSellerWebPage(
                      context: context,
                      container: ProviderScope.containerOf(
                        context,
                        listen: false,
                      ),
                    );
                    break;
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.pointColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.15),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                    BoxShadow(
                      color: Colors.white.withValues(alpha: 0.2),
                      blurRadius: 6,
                      offset: Offset(-2, -2), // 위쪽 하이라이트
                    ),
                  ],
                ),
                child: CustomButton(
                  title: _buttonTitle(role, approvalStatus),
                  paddingVertical: 6,
                  boxColor: AppColors.pointColor,
                  textColor: Colors.white,
                  textStyle: context.body.copyWith(fontWeight: FontWeight.bold),
                  borderColor: Colors.transparent,
                ),
              ),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //     color: AppColors.pointColor,
            //     borderRadius: BorderRadius.circular(12),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black.withOpacity(0.2),
            //         blurRadius: 10,
            //         offset: Offset(0, 6), // 아래로 그림자 → 떠있는 느낌
            //       ),
            //     ],
            //   ),
            //   child: CustomButton(
            //     title: "판매자로 전환 신청하기",
            //     boxColor: AppColors.pointColor,
            //     textColor: Colors.white,
            //     textStyle: context.bodyLarge.copyWith(
            //       fontWeight: FontWeight.bold,
            //     ),
            //     borderColor: Colors.transparent,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  String _buttonTitle(Role? role, ApprovalStatus? approvalStatus) {
    if (role == Role.SELLER) {
      return '판매자 페이지로 이동하기';
    }

    switch (approvalStatus) {
      case null:
        return '판매자 전환 신청하기';
      case ApprovalStatus.PENDING:
      case ApprovalStatus.REJECTED:
        return '판매자 신청 현황';
      case ApprovalStatus.APPROVED:
        return '판매자 페이지로 이동하기';
    }
  }
}
