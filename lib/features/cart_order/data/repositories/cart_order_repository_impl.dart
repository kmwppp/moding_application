import 'package:moding_application/features/cart_order/data/data_source/cart_order_data_source.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_request_dto.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_response_dto.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_order_response_dto.dart';
import 'package:moding_application/features/cart_order/domain/repositories/cart_order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

import '../../../../core/network/exceptions/api_code_exception.dart';
import '../../../../core/utils/alcohol_purchase_flow.dart';
import '../../../order/domain/enums/pg_provider.dart';

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
  Future<CartOrderResponseDto> getCartOrderInfo(
    List<int> cartItemIds, {
    PgProvider? pgProvider,
  }) async {
    try {
      final response = await _dataSource.getCartOrderInfo(
        cartItemIds,
        pgProvider: pgProvider,
      );
      return CartOrderResponseDto.fromJson(response);
    } on DioException catch (error) {
      final exception = ApiCodeException.fromDio(
        error,
        allowedCodes: alcoholPurchaseErrorCodes,
      );
      if (exception != null) throw exception;
      rethrow;
    }
  }

  @override
  Future<CartCreateOrderResponseWrapper> postCreateCartOrder(
    CartCreateOrderRequestDto request,
  ) async {
    try {
      final response = await _dataSource.createPostCartOrder(
        cartCreateOrderRequestDto: request,
      );
      return CartCreateOrderResponseWrapper.fromJson(response);
    } on DioException catch (error) {
      final exception = ApiCodeException.fromDio(
        error,
        allowedCodes: alcoholPurchaseErrorCodes,
      );
      if (exception != null) throw exception;
      rethrow;
    }
  }
}
