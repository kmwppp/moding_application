import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utils/date_time_util.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../providers/claim_check_viewmodel.dart';

class ClaimSubmitInfo extends ConsumerWidget {
  const ClaimSubmitInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(claimCheckViewModelProvider);
    final claim = state.claimDetail?.data;
    final thumbnailCacheSize = (80 * MediaQuery.devicePixelRatioOf(context))
        .round();

    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("클레임 신청 정보", style: context.titleSmall),
          const SizedBox(height: 14),
          if (state.isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            )
          else if (claim != null) ...[
            _infoRow(context, title: '클레임번호', content: claim.claimCode),
            _infoRow(context, title: '주문번호', content: claim.orderCode),
            _infoRow(context, title: '판매자', content: claim.sellerBusinessName),
            _infoRow(
              context,
              title: '신청일자',
              content: claim.createdAt.toLocal().toDataAndTimeNoLineBreak,
            ),
            _infoRow(
              context,
              title: '클레임 사유',
              content: claim.claimType.label,
            ),
            _infoRow(context, title: '클레임 상세', content: claim.claimReason),
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: claim.photoUrls.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final item = claim.photoUrls[index];
                  return GestureDetector(
                    onTap: () => _showImagePreview(context, imageUrl: item),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        item,
                        width: 80,
                        height: 80,
                        cacheWidth: thumbnailCacheSize,
                        cacheHeight: thumbnailCacheSize,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const SizedBox(
                            width: 80,
                            height: 80,
                            child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey.shade200,
                            child: const Icon(Icons.broken_image),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _infoRow(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              content,
              style: context.bodySmall.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _showImagePreview(
    BuildContext context, {
    required String imageUrl,
  }) {
    return showGeneralDialog(
      context: context,
      barrierLabel: 'image_preview',
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
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    onTap: () => Navigator.of(dialogContext).pop(),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
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
