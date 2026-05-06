import 'package:moding_application/features/product/domain/entities/product_recommand_dto.dart';

import '../../../product/domain/enums/product_recommand_type.dart';

abstract class ProductListRepository {
  Future<ProductRecommandDto> getProductList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  });
}
