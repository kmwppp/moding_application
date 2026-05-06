import '../../features/product/domain/enums/product_recommand_type.dart';

class ProductListPageParams {
  final ProductRecommendType type;
  final int? productId;

  ProductListPageParams({required this.type, this.productId});
}
