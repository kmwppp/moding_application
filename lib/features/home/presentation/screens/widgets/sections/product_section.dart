import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/utils/log_util.dart';

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
                    appLog(section.type);
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

class ProductHorizontalList extends StatefulWidget {
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
  State<ProductHorizontalList> createState() => _ProductHorizontalListState();
}

class _ProductHorizontalListState extends State<ProductHorizontalList> {
  late final int _colorStartIndex;

  @override
  void initState() {
    super.initState();
    _colorStartIndex = Random().nextInt(CardStyle.cardColors.length);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final listHeight = widget.sectionType == ProductRecommendType.newProduct
        ? ((screenWidth / 3) + 50) / 2.1 + 52
        : ((screenWidth / 2) - 50) + 92;

    return SizedBox(
      height: listHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        itemCount: widget.products.length,
        separatorBuilder: (context, index) => const SizedBox(width: 6),
        itemBuilder: (context, index) {
          final product = widget.products[index];
          return GestureDetector(
            onTap: () {
              context.push("/product/${product.id}");
            },
            child: ProductCardBuilder(
              index: index,
              product: product,
              sectionType: widget.sectionType,
              randomStartIndex: _colorStartIndex,
            ),
          );
        },
      ),
    );
  }
}
