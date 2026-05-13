import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/business_profile/domain/entities/business_profile_response_dto.dart';
import 'package:moding_application/features/business_profile/presentation/providers/business_profile_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

import '../../../../core/presentation/widgets/custom_button.dart';

class BusinessProfilePage extends ConsumerStatefulWidget {
  const BusinessProfilePage({super.key});

  @override
  ConsumerState<BusinessProfilePage> createState() =>
      _BusinessProfilePageState();
}

class _BusinessProfilePageState extends ConsumerState<BusinessProfilePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(businessProfileViewModelProvider.notifier)
          .getBusinessProfileInfo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(businessProfileViewModelProvider);
    final businessProfile = state.businessProfile?.data;

    return Scaffold(
      bottomNavigationBar: !state.isLoading
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                    child: GestureDetector(
                      onTap: () async {
                        if (state
                                .businessProfile
                                ?.data
                                .latestChangeRequestStatus ==
                            null) {
                          final result = await context.push<bool>(
                            '/request_change_business_profile',
                          );
                          if (result == true) {
                            await ref
                                .read(businessProfileViewModelProvider.notifier)
                                .getBusinessProfileInfo();
                          }
                        } else {
                          context.push('/business_information_change_inquiry');
                        }
                      },
                      child: CustomButton(
                        title:
                            state
                                    .businessProfile
                                    ?.data
                                    .latestChangeRequestStatus ==
                                null
                            ? '사업자 정보 변경 신청'
                            : '사업자 정보 변경 조회',
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
                ),
              ],
            )
          : null,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "사업자 정보 관리"),
            if (state.isLoading)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (businessProfile == null)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    '사업자 정보를 불러오지 못했어요.',
                    style: context.body.copyWith(color: AppColors.darkGrey),
                  ),
                ),
              )
            else ...[
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: PaymentCompleteCommonBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '사업자 정보',
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _InfoRow(
                        title: '상호명',
                        content: _valueOrDash(businessProfile.businessName),
                      ),
                      const SizedBox(height: 8),
                      _InfoRow(
                        title: '주소',
                        content: _buildAddress(businessProfile),
                      ),
                      const SizedBox(height: 8),
                      _InfoRow(
                        title: '사업자등록번호',
                        content: _valueOrDash(businessProfile.businessNumber),
                      ),
                      const SizedBox(height: 8),
                      _InfoRow(
                        title: '대표자명',
                        content: _valueOrDash(businessProfile.ownerName),
                      ),
                      const SizedBox(height: 8),
                      _InfoRow(
                        title: '업태 / 종목',
                        content: _buildCategory(businessProfile),
                      ),
                      const SizedBox(height: 8),
                      _InfoRow(
                        title: '사업장 전화번호',
                        content: _valueOrDash(businessProfile.businessPhone),
                      ),
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

  String _buildAddress(BusinessProfileResponseDto businessProfile) {
    final zipCode = businessProfile.zipCode?.trim() ?? '';
    final address = businessProfile.address?.trim() ?? '';
    final addressDetail = businessProfile.addressDetail?.trim() ?? '';

    final buffer = <String>[
      if (zipCode.isNotEmpty) '($zipCode)',
      if (address.isNotEmpty) address,
      if (addressDetail.isNotEmpty) addressDetail,
    ];

    if (buffer.isEmpty) {
      return '-';
    }

    return buffer.join(' ');
  }

  String _buildCategory(BusinessProfileResponseDto businessProfile) {
    final parent = businessProfile.parentCategoryName?.trim() ?? '';
    final category = businessProfile.businessCategoryName?.trim() ?? '';

    final buffer = <String>[
      if (parent.isNotEmpty) parent,
      if (category.isNotEmpty) category,
    ];

    if (buffer.isEmpty) {
      return '-';
    }

    return buffer.join(' / ');
  }

  String _valueOrDash(String? value) {
    final trimmed = value?.trim() ?? '';
    return trimmed.isEmpty ? '-' : trimmed;
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 110,
          child: Text(
            title,
            style: context.bodySmall.copyWith(color: AppColors.darkGrey),
          ),
        ),
        Expanded(child: Text(content, style: context.bodySmall)),
      ],
    );
  }
}
