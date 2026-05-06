enum ProductRecommendType {
  recommended,
  newProduct,
  event,
  discounted,
  similar,
  businessPicks,
  recentlyOrdered,
}

extension ProductRecommendTypeX on ProductRecommendType {
  static ProductRecommendType fromString(String value) {
    switch (value.toUpperCase()) {
      case 'RECOMMENDED':
        return ProductRecommendType.recommended;
      case 'NEW':
        return ProductRecommendType.newProduct;
      case 'EVENT':
        return ProductRecommendType.event;
      case 'DISCOUNTED':
        return ProductRecommendType.discounted;
      case 'SIMILAR':
        return ProductRecommendType.similar;
      case 'BUSINESS_PICKS':
        return ProductRecommendType.businessPicks;
      case 'RECENTLY_ORDERED':
        return ProductRecommendType.recentlyOrdered;
      default:
        throw Exception('Unknown ProductRecommendType: $value'); // 🔥 중요
    }
  }

  String get value {
    switch (this) {
      case ProductRecommendType.recommended:
        return "RECOMMENDED";
      case ProductRecommendType.newProduct:
        return "NEW";
      case ProductRecommendType.event:
        return "EVENT";
      case ProductRecommendType.discounted:
        return "DISCOUNTED";
      case ProductRecommendType.similar:
        return "SIMILAR";
      case ProductRecommendType.businessPicks:
        return "BUSINESS_PICKS";
      case ProductRecommendType.recentlyOrdered:
        return "RECENTLY_ORDERED";
    }
  }

  String get label {
    switch (this) {
      case ProductRecommendType.recommended:
        return "이달의 추천";
      case ProductRecommendType.newProduct:
        return "신상품";
      case ProductRecommendType.event:
        return "기획전";
      case ProductRecommendType.discounted:
        return "할인중";
      case ProductRecommendType.similar:
        return "유사 상품";
      case ProductRecommendType.businessPicks:
        return "내 업종 추천";
      case ProductRecommendType.recentlyOrdered:
        return "최근 주문 상품";
    }
  }
}
