import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/entities/review_list_response_dto.dart';
import '../../providers/review_list_viewmodel.dart';
import 'edit_review_bottom_sheet.dart';

class ReviewListItem extends ConsumerWidget {
  const ReviewListItem({super.key, required this.item});

  final ReviewDto item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final thumbnailCacheSize = (60 * MediaQuery.devicePixelRatioOf(context))
        .round();
    final thumbnailUrl = item.productThumbnailUrl ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _formatReviewDate(item.createdAt),
              style: context.body.copyWith(color: AppColors.darkGrey),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                _showDeleteReviewBottomSheet(context, ref);
              },
              child: Text(
                "삭제",
                style: context.bodySmall.copyWith(color: Colors.red),
              ),
            ),
            if (item.canEdit) ...[
              SizedBox(width: 4),
              InkWell(
                onTap: () {
                  AppBottomSheet.show(
                    context: context,
                    title: '리뷰 수정',
                    child: EditReviewBottomSheet(
                      parentContext: context,
                      review: item,
                    ),
                  );
                },
                child: TextWithChevron(
                  text: "수정",
                  style: context.bodySmall.copyWith(color: AppColors.darkGrey),
                  iconSize: 8,
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            context.push("/product/${item.productId}");
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: thumbnailUrl.isEmpty
                    ? Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey.shade200,
                        child: const Icon(Icons.image_not_supported_outlined),
                      )
                    : Image.network(
                        thumbnailUrl,
                        width: 60,
                        height: 60,
                        cacheWidth: thumbnailCacheSize,
                        cacheHeight: thumbnailCacheSize,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const SizedBox(
                            width: 60,
                            height: 60,
                            child: Center(
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 60,
                            height: 60,
                            color: Colors.grey.shade200,
                            child: const Icon(Icons.broken_image),
                          );
                        },
                      ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.productName,
                        style: context.body,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if ((item.orderItemOptionName ?? '').isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            item.orderItemOptionName!,
                            style: context.bodySmall.copyWith(
                              color: AppColors.darkGrey,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.content, style: context.bodySmall),
            if (item.photos.isNotEmpty) ...[
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: item.photos.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    final photo = item.photos[index];
                    return GestureDetector(
                      onTap: () => _showImagePreview(
                        context,
                        photos: item.photos,
                        initialIndex: index,
                      ),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: photo.photoUrl,
                            memCacheWidth: thumbnailCacheSize,
                            memCacheHeight: thumbnailCacheSize,
                            imageBuilder: (context, imageProvider) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              );
                            },
                            placeholder: (context, url) => Container(
                              color: Colors.grey.shade200,
                              child: const Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              color: Colors.grey.shade200,
                              child: const Center(
                                child: Icon(Icons.broken_image),
                              ),
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
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  String _formatReviewDate(DateTime dateTime) {
    final local = dateTime.toLocal();
    final year = local.year.toString().padLeft(4, '0');
    final month = local.month.toString().padLeft(2, '0');
    final day = local.day.toString().padLeft(2, '0');
    return '$year.$month.$day';
  }

  Future<void> _showImagePreview(
    BuildContext context, {
    required List<ReviewPhotoDto> photos,
    required int initialIndex,
  }) {
    final pageController = PageController(initialPage: initialIndex);
    return showGeneralDialog(
      context: context,
      barrierLabel: 'review_image_preview',
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.72),
      pageBuilder: (dialogContext, animation, secondaryAnimation) {
        return SafeArea(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Positioned.fill(
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
                      );
                    },
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
                        color: Colors.black45,
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

  void _showDeleteReviewBottomSheet(BuildContext context, WidgetRef ref) {
    AppBottomSheet.show(
      context: context,
      title: '리뷰 삭제',
      child: Builder(
        builder: (sheetContext) => SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('리뷰를 삭제하시겠습니까?', style: sheetContext.titleMedium),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          final result = await ref
                              .read(reviewListViewModelProvider.notifier)
                              .deleteMyReview(reviewId: item.id);
                          if (!sheetContext.mounted) return;

                          if (result.success) {
                            Navigator.of(sheetContext).pop();
                            if (!context.mounted) return;
                            await CommonDialog.show(
                              context,
                              title: '리뷰 삭제',
                              message: '삭제되었습니다.',
                            );
                            if (!context.mounted) return;
                            await ref
                                .read(reviewListViewModelProvider.notifier)
                                .loadInitial();
                          } else {
                            if (!context.mounted) return;
                            CommonDialog.show(
                              context,
                              title: '오류',
                              isSuccess: false,
                              message: result.message.isEmpty
                                  ? '리뷰 삭제에 실패했습니다.'
                                  : result.message,
                            );
                          }
                        },
                        child: CustomButton(
                          title: '삭제',
                          boxColor: AppColors.pointColor,
                          textColor: Colors.white,
                          paddingVertical: 6,
                          borderColor: AppColors.pointColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.of(sheetContext).pop(),
                        child: CustomButton(
                          title: '취소',
                          boxColor: AppColors.primary,
                          textColor: Colors.white,
                          paddingVertical: 6,
                          borderColor: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
