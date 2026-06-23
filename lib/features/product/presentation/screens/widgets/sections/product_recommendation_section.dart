import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';
import 'package:moding_application/features/product/presentation/providers/product_state.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../router/entities/product_list_page_params.dart';
import '../product_card_item.dart';

class ProductRecommendationSection extends ConsumerWidget {
  const ProductRecommendationSection({
    super.key,
    required this.title,
    required this.productId,
    required this.recommandType,
  });

  final String title;
  final int productId;
  final ProductRecommendType recommandType;

  List<RecommandDto>? _getList(ProductState state) {
    switch (recommandType) {
      case ProductRecommendType.similar:
        return state.similarList;
      case ProductRecommendType.recentlyOrdered:
        return state.recentlyList;

      case ProductRecommendType.businessPicks:
        return state.businessPickList;
      default:
        return state.similarList;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double listHeight = ProductCardItem.estimatedHeightFor(screenWidth);
    final state = ref.watch(productViewModelProvider(productId));
    final list = _getList(state);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: context.titleMedium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  context.push(
                    '/product_list_page',
                    extra: ProductListPageParams(
                      type: recommandType,
                      productId: productId,
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "더보기",
                    style: context.bodySmall.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          SizedBox(
            height: listHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: (list?.length ?? 0) > 10 ? 10 : (list?.length ?? 0),
              itemBuilder: (context, index) {
                final item = list![index];

                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      context.push("/product/${item.id}");
                    },
                    child: ProductCardItem(
                      imageUrl: item.thumbnailImageUrl,
                      title: item.name,
                      isHaccpCertified: item.isHaccpCertified,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
