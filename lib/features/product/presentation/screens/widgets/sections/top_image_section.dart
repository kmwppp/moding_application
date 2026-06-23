import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../domain/entities/product_dto.dart';
import '../../../providers/product_viewmodel.dart';

class TopImageSection extends ConsumerWidget {
  const TopImageSection({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double cardWidth = MediaQuery.of(context).size.width;
    final state = ref.watch(productViewModelProvider(productId));
    final notifier = ref.read(productViewModelProvider(productId).notifier);
    final product = state.productInfo; // AsyncValue 기준 (상황 따라 수정)

    final images = product != null ? getImages(product) : [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: cardWidth,
          child: Stack(
            children: [
              PageView.builder(
                itemCount: images.length,
                onPageChanged: (index) {
                  notifier.changeImageCurrentIndex(index);
                },
                itemBuilder: (context, index) {
                  final imageUrl = Uri.encodeFull(images[index]);
                  return CachedNetworkImage(
                    imageUrl: imageUrl,
                    cacheKey: imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) {
                      return Container(
                        color: Colors.grey[200],
                        child: const Center(child: Icon(Icons.broken_image)),
                      );
                    },
                  );
                },
              ),
              Positioned(
                bottom: 6,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      "${state.imageCurrentIndex + 1}/${images.length}",
                      style: context.body.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Visibility(
                  visible: state.productInfo?.isHaccpCertified == true,
                  child: Image.asset(
                    "assets/images/icons/haccp_icon.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    color: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        final current =
                            state.productInfo?.isWishlisted ?? false;
                        notifier.updateProductWishList(!current);
                      },
                      child: Image.asset(
                        state.productInfo?.isWishlisted ?? false
                            ? "assets/images/icons/fullLikeIcon.png"
                            : "assets/images/icons/emptyLikeIcon.png",
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<String> getImages(ProductDto product) {
    final List<String> images = [];

    if (product.thumbnailImageUrl != null) {
      images.add(product.thumbnailImageUrl!);
    }

    if (product.galleryImageUrls != null) {
      images.addAll(product.galleryImageUrls!);
    }

    return images;
  }
}
