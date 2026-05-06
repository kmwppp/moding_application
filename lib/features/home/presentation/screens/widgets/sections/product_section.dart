import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/presentation/widgets/styles/card_style.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../router/entities/product_list_page_params.dart';
import '../../../../../product/domain/enums/product_recommand_type.dart';
import '../../../../domain/entities/home_basic_item_model.dart';
import '../builders/product_card_builder.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key, required this.section});

  final dynamic section;

  @override
  Widget build(BuildContext context) {
    final cardWidth = (MediaQuery.of(context).size.width / 2) - 50;

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 각 섹션 타이틀
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  section.title,
                  style: context
                      .listTitleDynamic(cardWidth)
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print(section.type);
                    context.push(
                      '/product_list_page',
                      extra: ProductListPageParams(type: section.type),
                    ); // 👉 라우팅 맞게 수정
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.lightGrey,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "더 보기",
                            style: context.bodySmall.copyWith(
                              color: AppColors.darkGrey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.chevron_right,
                            size: 16,
                            color: AppColors.darkGrey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 상품 가로 배치 스크롤
          ProductHorizontalList(
            products: section.productList,
            sectionType: section.type,
            sectionId: section.id,
          ),
        ],
      ),
    );
  }
}

class ProductHorizontalList extends StatelessWidget {
  const ProductHorizontalList({
    super.key,
    required this.products,
    required this.sectionType,
    required this.sectionId,
  });

  final List<HomeBasicItemModel> products;
  final ProductRecommendType sectionType;
  final int sectionId;

  @override
  Widget build(BuildContext context) {
    final colorPaletteLength = CardStyle.cardColors.length;
    final colorStartIndex =
        (sectionId % colorPaletteLength + colorPaletteLength) %
        colorPaletteLength;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),

      child: Row(
        children: [
          ...products.asMap().entries.map((entry) {
            final index = entry.key;
            final product = entry.value;

            return GestureDetector(
              onTap: () {
                context.push("/product/${product.id}");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 6),
                child: ProductCardBuilder(
                  index: index,
                  product: product,
                  sectionType: sectionType,
                  randomStartIndex: colorStartIndex,
                ),
              ),
            );
          }),

          /// 🔥 여기 추가
          // _MoreButton(sectionType: sectionType),
        ],
      ),
    );
  }
}

class _MoreButton extends StatelessWidget {
  final ProductRecommendType sectionType;

  const _MoreButton({required this.sectionType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/product_list_page', extra: sectionType); // 👉 라우팅 맞게 수정
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade100,
        ),
        child: const Center(
          child: Text(
            "상품 더보기 →",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
