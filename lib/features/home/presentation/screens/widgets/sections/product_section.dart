import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/utils/log_util.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/presentation/widgets/card/card_item_width.dart';
import '../../../../../../core/presentation/widgets/styles/card_style.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../../../../../../router/entities/product_list_page_params.dart';
import '../../../../../product/domain/enums/product_recommand_type.dart';
import '../../../../domain/entities/home_basic_item_model.dart';
import '../builders/product_card_builder.dart';
import '../cards/home_item_card_length.dart';

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

class ProductHorizontalList extends ConsumerStatefulWidget {
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
  ConsumerState<ProductHorizontalList> createState() =>
      _ProductHorizontalListState();
}

class _ProductHorizontalListState extends ConsumerState<ProductHorizontalList> {
  late final int _colorStartIndex;
  bool _isLoggedIn = true;

  @override
  void initState() {
    super.initState();
    _colorStartIndex = Random().nextInt(CardStyle.cardColors.length);
    _checkLoginState();
  }

  Future<void> _checkLoginState() async {
    final accessToken = await ref.read(tokenStorageProvider).getAccessToken();
    if (!mounted) return;
    final isLoggedIn = (accessToken ?? '').trim().isNotEmpty;
    if (isLoggedIn != _isLoggedIn) {
      setState(() => _isLoggedIn = isLoggedIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final listHeight = widget.sectionType == ProductRecommendType.newProduct
        ? CardItemWidth.estimatedHeightFor(screenWidth, isMain: true) + 0
        : HomeItemCardLength.estimatedHeightFor(
            screenWidth,
            isLoggedIn: _isLoggedIn,
          );

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
              isLoggedIn: _isLoggedIn,
            ),
          );
        },
      ),
    );
  }
}
