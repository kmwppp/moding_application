import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moding_application/core/utils/date_time_util.dart';
import 'package:moding_application/features/product/domain/entities/review_dto.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class ProductReviewItem extends StatelessWidget {
  const ProductReviewItem({super.key, required this.review});

  final ReviewDto review;

  @override
  Widget build(BuildContext context) {
    final thumbnailCacheSize = (80 * MediaQuery.devicePixelRatioOf(context))
        .round();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Text(review.name, style: context.body),
            const SizedBox(width: 6),
            Text(
              review.orderItemOptionName,
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
            const Spacer(),
            Text(
              review.createdAt.toDateOnly,
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          review.content,
          style: context.bodySmall.copyWith(fontWeight: FontWeight.w500),
        ),
        if (review.photos.isNotEmpty) ...[
          const SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: review.photos.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final photoUrl = review.photos[index].photoUrl;
                return GestureDetector(
                  onTap: () => _showImagePreview(
                    context,
                    photos: review.photos,
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
                              child: CachedNetworkImage(
                                imageUrl: Uri.encodeFull(photos[index].photoUrl),
                                fit: BoxFit.contain,
                                placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.broken_image),
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
