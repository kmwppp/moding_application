import 'package:flutter/material.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';

import '../../../../../../core/presentation/widgets/card/card_item_width.dart';
import '../../../../domain/entities/home_basic_item_model.dart';
import '../cards/home_item_card_length.dart';

class ProductCardBuilder extends StatelessWidget {
  const ProductCardBuilder({
    super.key,
    required this.index,
    required this.product,
    required this.sectionType,
    required this.randomStartIndex,
    required this.isLoggedIn,
  });

  final int index;
  final HomeBasicItemModel product;
  final ProductRecommendType sectionType;
  final int randomStartIndex;
  final bool isLoggedIn;

  @override
  Widget build(BuildContext context) {
    // 섹션 타입이 width면 가로 카드
    if (sectionType == ProductRecommendType.newProduct) {
      return CardItemWidth(
        index: index,
        randomStartIndex: randomStartIndex,
        id: product.id,
        name: product.name,
        thumbnailUrl: product.thumbnailUrl,
        isMain: true,
        isHaccpCertified: product.isHaccpCertified,
        lowestPrice: product.lowestPrice,
        lowestDiscountAmount: product.lowestDiscountAmount,
        lowestDiscountRate: product.lowestDiscountRate,
        lowestSellingPrice: product.lowestSellingPrice,
        isLoggedIn: isLoggedIn,
      );
    }

    // 섹션 타입이 width면 세로 카드
    return HomeItemCardLength(
      index: index,
      randomStartIndex: randomStartIndex,
      id: product.id,
      name: product.name,
      thumbnailUrl: product.thumbnailUrl,
      viewCount: product.viewCount,
      reviewCount: product.reviewCount,
      isHaccpCertified: product.isHaccpCertified,
      lowestPrice: product.lowestPrice,
      lowestDiscountAmount: product.lowestDiscountAmount,
      lowestDiscountRate: product.lowestDiscountRate,
      lowestSellingPrice: product.lowestSellingPrice,
      isLoggedIn: isLoggedIn,
    );
  }
}
