import 'package:moding_application/features/cart_order/data/data_source/cart_order_data_source.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_request_dto.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_response_dto.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_order_response_dto.dart';
import 'package:moding_application/features/cart_order/domain/repositories/cart_order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_order_repository_impl.g.dart';

@riverpod
CartOrderRepository cartOrderRepository(Ref ref) {
  final dataSource = ref.watch(cartOrderDataSourceProvider);
  return CartOrderRepositoryImpl(dataSource);
}

class CartOrderRepositoryImpl implements CartOrderRepository {
  final CartOrderDataSource _dataSource;

  CartOrderRepositoryImpl(this._dataSource);

  @override
  Future<CartOrderResponseDto> getCartOrderInfo(List<int> cartItemIds) async {
    final response = await _dataSource.getCartOrderInfo(cartItemIds);
    return CartOrderResponseDto.fromJson(response);
  }

  @override
  Future<CartCreateOrderResponseWrapper> postCreateCartOrder(
    CartCreateOrderRequestDto request,
  ) async {
    final response = await _dataSource.createPostCartOrder(
      cartCreateOrderRequestDto: request,
    );
    return CartCreateOrderResponseWrapper.fromJson(response);
  }
}
