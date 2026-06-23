import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/sections/product_recommendation_section.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../cart/presentation/providers/cart/cart_viewmodel.dart';
import '../../../domain/enums/product_recommand_type.dart';

class ProductPutInCartBottomSheet extends ConsumerWidget {
  const ProductPutInCartBottomSheet({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productViewModelProvider(productId));
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          SizedBox(height: 14),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: AppColors.lightGrey,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: CachedNetworkImage(
                          imageUrl: Uri.encodeFull(
                            state.productInfo?.thumbnailImageUrl ?? "",
                          ),
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) {
                            return Container(
                              color: Colors.grey[200],
                              child: const Center(
                                child: Icon(Icons.broken_image),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(width: 14),
                    Text(
                      "장바구니에 추가되었어요.",
                      style: context.bodyLarge.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),

                    GestureDetector(
                      onTap: () {
                        // 이동 로직
                        context.pop();
                        ref.invalidate(cartViewModelProvider);
                        ref.invalidate(appBadgeProvider);
                        context.push("/cart");
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "바로가기",
                            style: context.body.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ProductRecommendationSection(
            title: "사장님 맞춤 추천 상품",
            productId: productId,
            recommandType: ProductRecommendType.businessPicks,
          ),
        ],
      ),
    );
  }
}
