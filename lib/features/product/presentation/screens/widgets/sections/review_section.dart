import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/utils/date_time_util.dart';
import 'package:moding_application/core/utils/string_util.dart';
import 'package:moding_application/features/product/domain/entities/review_dto.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';

class ReviewSection extends ConsumerWidget {
  const ReviewSection({
    super.key,
    required this.cardWidth,
    required this.productId,
  });

  final double cardWidth;
  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productViewModelProvider(productId));
    final reviews = state.reviewList ?? const <ReviewDto>[];
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "리뷰 (${StringUtil.formatCurrency(state.productInfo?.reviewCount ?? 0)}건)",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          reviews.isNotEmpty
              ? Column(
                  children: List.generate(reviews.length, (index) {
                    return Column(
                      children: [
                        _buildReviewItem(
                          context: context,
                          name: reviews[index].name,
                          photos: reviews[index].photos,
                          date: reviews[index].createdAt.toDateOnly,
                          option: reviews[index].orderItemOptionName,
                          content: reviews[index].content,
                        ),
                        if (index != reviews.length - 1)
                          const Divider(height: 20, thickness: 1),
                      ],
                    );
                  }),
                )
              : Padding(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: Text("아직 작성된 리뷰가 없습니다.", style: context.body),
                  ),
                ),
        ],
      ),
    );
  }

  Column _buildReviewItem({
    required BuildContext context,
    required String name,
    required List<ReviewPhotoDto> photos,
    required String date,
    required String option,
    required String content,
  }) {
    final thumbnailCacheSize = (80 * MediaQuery.devicePixelRatioOf(context))
        .round();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(name, style: context.body),
                SizedBox(width: 6),
                Text(
                  option,
                  style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                ),
                Spacer(),
                Text(
                  date,
                  style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              content,
              style: context.bodySmall.copyWith(fontWeight: FontWeight.w500),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        if (photos.isNotEmpty) ...[
          const SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: photos.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final photoUrl = photos[index].photoUrl;
                return GestureDetector(
                  onTap: () => _showImagePreview(
                    context,
                    photos: photos,
                    initialIndex: index,
                  ),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: photoUrl,
                        memCacheWidth: thumbnailCacheSize,
                        memCacheHeight: thumbnailCacheSize,
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          );
                        },
                        placeholder: (context, url) => Container(
                          color: Colors.grey[200],
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: Colors.grey[200],
                          child: const Center(child: Icon(Icons.broken_image)),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ],
    );
  }

  Future<void> _showImagePreview(
    BuildContext context, {
    required List<ReviewPhotoDto> photos,
    required int initialIndex,
  }) {
    final pageController = PageController(initialPage: initialIndex);
    return showGeneralDialog(
      context: context,
      barrierLabel: 'product_review_image_preview',
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.72),
      pageBuilder: (dialogContext, animation, secondaryAnimation) {
        return SafeArea(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Positioned.fill(
                  child: GestureDetector(
                    onTap: () => Navigator.of(dialogContext).pop(),
                    child: Container(color: Colors.transparent),
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: GestureDetector(
                          onTap: () => Navigator.of(dialogContext).pop(),
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.45),
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
                    ),
                    Expanded(
                      child: PageView.builder(
                        controller: pageController,
                        itemCount: photos.length,
                        itemBuilder: (context, index) {
                          return InteractiveViewer(
                            minScale: 1,
                            maxScale: 4,
                            child: Center(
                              child: Image.network(
                                photos[index].photoUrl,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
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
}
