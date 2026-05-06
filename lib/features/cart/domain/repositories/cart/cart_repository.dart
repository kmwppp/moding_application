import 'package:moding_application/features/cart/domain/entities/cart/cart_response_dto.dart';

import '../../../../product/domain/entities/product_recommand_dto.dart';
import '../../../../product/domain/enums/product_recommand_type.dart';

abstract class CartRepository {
  Future<CartResponseDto> getCartList();

  Future<ProductRecommandDto> getProductRecommendList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  });

  Future<void> patchCartOptionCount(int optionId, int quantity);

  Future<void> deleteCartOption(int optionId);

  Future<void> deleteCartItems(List<int> cartItemIds);
}
