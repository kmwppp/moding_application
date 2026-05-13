import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/business_profile/domain/enums/business_change_request_status.dart';
import 'package:moding_application/features/business_profile/presentation/providers/business_profile_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

class BusinessInformationChangeInquiry extends ConsumerStatefulWidget {
  const BusinessInformationChangeInquiry({super.key});

  @override
  ConsumerState<BusinessInformationChangeInquiry> createState() =>
      _BusinessInformationChangeInquiryState();
}

class _BusinessInformationChangeInquiryState
    extends ConsumerState<BusinessInformationChangeInquiry> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(businessProfileViewModelProvider.notifier)
          .getChangeRequestBusinessProfile(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(businessProfileViewModelProvider);
    final changeRequest = state.changeRequestBusinessProfile?.data;

    return Scaffold(
      bottomNavigationBar: !state.isLoading && changeRequest != null
          ? SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                    child: GestureDetector(
                      onTap: () async {
                        final result = await context.push<bool>(
                          '/request_change_business_profile',
                        );

                        if (result == true && mounted) {
                          await ref
                              .read(businessProfileViewModelProvider.notifier)
                              .getChangeRequestBusinessProfile();
                        }
                      },
                      child: CustomButton(
                        title: '사업자 정보 변경 재신청',
                        boxColor: AppColors.primary,
                        borderColor: AppColors.primary,
                        textColor: Colors.white,
                        paddingVertical: 6,
                        textStyle: context.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "사업자 정보 변경 조회"),
            if (state.isLoading)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              )
            else if (changeRequest == null)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    '변경 신청 정보를 불러오지 못했어요.',
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
                        '사업자 프로필 변경 진행 상태',
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        _statusLabel(changeRequest.status),
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkGrey,
                        ),
                      ),
                      if (changeRequest.status ==
                              BusinessChangeRequestStatus.rejected &&
                          _valueOrDash(changeRequest.rejectionReason) !=
                              '-') ...[
                        const SizedBox(height: 10),
                        _InfoRow(
                          title: '거절 사유',
                          content: _valueOrDash(changeRequest.rejectionReason),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: PaymentCompleteCommonBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '신청한 프로필 정보',
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _InfoRow(
                        title: '사업장 전화번호',
                        content: _valueOrDash(
                          changeRequest.pendingBusinessPhone,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _InfoRow(
                        title: '업종 카테고리',
                        content:
                            '${changeRequest.pendingParentCategoryName} / ${changeRequest.pendingBusinessCategoryName}',
                      ),

                      const SizedBox(height: 8),
                      _InfoRow(
                        title: '신청 시각',
                        content: _formatDateTime(changeRequest.createdAt),
                      ),
                      if (changeRequest.status !=
                          BusinessChangeRequestStatus.pending) ...[
                        const SizedBox(height: 8),
                        _InfoRow(
                          title: '심사 완료 시간',
                          content: changeRequest.reviewedAt == null
                              ? '-'
                              : _formatDateTime(changeRequest.reviewedAt!),
                        ),
                      ],
                      const SizedBox(height: 8),
                      _ImageRow(
                        title: '사업자 등록증',
                        imageUrl: changeRequest.pendingLicenseFileUrl,
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

  String _statusLabel(BusinessChangeRequestStatus status) {
    switch (status) {
      case BusinessChangeRequestStatus.pending:
        return '사업자 프로필 변경 심사중';
      case BusinessChangeRequestStatus.approved:
        return '사업자 프로필 변경 승인';
      case BusinessChangeRequestStatus.rejected:
        return '사업자 프로필 변경 거절';
    }
  }

  String _valueOrDash(String? value) {
    final trimmed = value?.trim() ?? '';
    return trimmed.isEmpty ? '-' : trimmed;
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy.MM.dd HH:mm').format(dateTime.toLocal());
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

class _ImageRow extends StatelessWidget {
  const _ImageRow({required this.title, required this.imageUrl});

  final String title;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final trimmedUrl = imageUrl?.trim() ?? '';

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
        Expanded(
          child: trimmedUrl.isEmpty
              ? Text('-', style: context.bodySmall)
              : GestureDetector(
                  onTap: () => _showImagePreview(context, imageUrl: trimmedUrl),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AspectRatio(
                      aspectRatio: 1.4,
                      child: Image.network(
                        trimmedUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: AppColors.lightGrey,
                            alignment: Alignment.center,
                            child: Text(
                              '이미지를 불러올 수 없어요.',
                              style: context.caption.copyWith(
                                color: AppColors.darkGrey,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  Future<void> _showImagePreview(
    BuildContext context, {
    required String imageUrl,
  }) {
    return showGeneralDialog(
      context: context,
      barrierLabel: 'business_license_preview',
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.72),
      pageBuilder: (dialogContext, animation, secondaryAnimation) {
        return SafeArea(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Positioned.fill(
                  child: InteractiveViewer(
                    minScale: 1,
                    maxScale: 4,
                    child: Center(
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.contain,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(
                              Icons.broken_image,
                              color: Colors.white,
                              size: 40,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.of(dialogContext).pop(),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.48),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white24),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
