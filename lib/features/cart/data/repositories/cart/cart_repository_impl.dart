import 'package:moding_application/features/cart/data/data_source/cart/cart_data_source.dart';
import 'package:moding_application/features/cart/domain/entities/cart/cart_response_dto.dart';
import 'package:moding_application/features/cart/domain/repositories/cart/cart_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../product/domain/entities/product_recommand_dto.dart';
import '../../../../product/domain/enums/product_recommand_type.dart';

part 'cart_repository_impl.g.dart';

@riverpod
CartRepository cartRepository(Ref ref) {
  final dataSource = ref.watch(cartDataSourceProvider);
  return CartRepositoryImpl(dataSource);
}

class CartRepositoryImpl implements CartRepository {
  final CartDataSource _dataSource;

  CartRepositoryImpl(this._dataSource);

  @override
  Future<CartResponseDto> getCartList() async {
    final response = await _dataSource.getCartList();
    return CartResponseDto.fromJson(response);
  }

  @override
  Future<ProductRecommandDto> getProductRecommendList({
    required ProductRecommendType type,
    required int page,
    required int size,
    int? productId,
  }) async {
    final response = await _dataSource.getProductRecommend(
      type: type,
      page: page,
      size: size,
      productId: productId,
    );
    final data = response['data'];
    return ProductRecommandDto.fromJson(data);
  }

  @override
  Future<void> patchCartOptionCount(int optionId, int quantity) async {
    await _dataSource.patchCartOptionCount(optionId, quantity);
  }

  @override
  Future<void> deleteCartOption(int optionId) async {
    await _dataSource.deleteProductOption(optionId);
  }

  @override
  Future<void> deleteCartItems(List<int> cartItemIds) async {
    await _dataSource.deleteProducts(cartItemIds);
  }
}
