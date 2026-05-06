import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../router/entities/product_list_page_params.dart';
import '../../../../../product/presentation/screens/widgets/product_card_item.dart';

class CartRecommendationSection extends ConsumerWidget {
  const CartRecommendationSection({
    super.key,
    required this.title,
    required this.recommandType,
  });

  final String title;
  final ProductRecommendType recommandType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double listHeight = (screenWidth / 3) + 20;
    final state = ref.watch(cartViewModelProvider);
    final list = state.recentlyList;

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
                style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  context.push(
                    '/product_list_page',
                    extra: ProductListPageParams(type: recommandType),
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
              itemCount: list?.length ?? 0,
              itemBuilder: (context, index) {
                final item = list?[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      context.push("/product/${item.id}");
                    },
                    child: ProductCardItem(
                      imageUrl: item!.thumbnailImageUrl,
                      title: item.name,
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
