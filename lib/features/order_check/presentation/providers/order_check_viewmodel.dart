import 'package:moding_application/core/network/entities/tax_invoice_url_response_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:moding_application/features/order_check/data/repositories/order_check_repository_impl.dart';
import 'package:moding_application/features/order_check/domain/entities/order_delivery_tracking_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'order_check_state.dart';

part 'order_check_viewmodel.g.dart';

@Riverpod()
class OrderCheckViewModel extends _$OrderCheckViewModel {
  @override
  OrderCheckState build() {
    return OrderCheckState.initial();
  }

  Future<void> getOrderDetail(int orderId) async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(orderCheckRepositoryProvider);
      final orderDetail = await repository.getOrderDetail(orderId);
      state = state.copyWith(isLoading: false, orderDetail: orderDetail);
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(isLoading: false);
    }
  }

  Future<OrderDeliveryTrackingWrapper?> getOrderDeliveryDetail(
    int orderId,
  ) async {
    try {
      final repository = ref.read(orderCheckRepositoryProvider);
      return await repository.getOrderDeliveryDetail(orderId);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<TaxInvoiceUrlResponseWrapper?> getOrderTaxInvoiceUrl(
    int orderId,
  ) async {
    try {
      final repository = ref.read(orderCheckRepositoryProvider);
      return await repository.getOrderTaxInvoiceUrl(orderId);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
