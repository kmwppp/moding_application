import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_request_dto.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_response_dto.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_order_response_dto.dart';

abstract class CartOrderRepository {
  Future<CartOrderResponseDto> getCartOrderInfo(List<int> cartItemIds);

  Future<CartCreateOrderResponseWrapper> postCreateCartOrder(
    CartCreateOrderRequestDto request,
  );
}
