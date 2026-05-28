import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/tax_invoice_url_response_dto.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/order_list/data/repositories/order_list_repository_impl.dart';
import 'package:moding_application/features/order_list/domain/entities/order_list_response_dto.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/enums/order_list_search_type.dart';
import 'order_list_state.dart';

part 'order_list_viewmodel.g.dart';

@Riverpod()
class OrderListViewModel extends _$OrderListViewModel {
  @override
  OrderListState build() {
    return OrderListState.initial();
  }

  Future<void> changeSearchType(OrderListSearchType type) async {
    state = state.copyWith(searchType: type, dateListWrapper: null);
    await getOrderDateList();
  }

  Future<void> getOrderDateList() async {
    try {
      final repository = ref.read(orderListRepositoryProvider);
      final orderDateList = await repository.getOrderDateList(
        statuses: _getStatuses(state.searchType),
      );
      state = state.copyWith(dateListWrapper: orderDateList);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<ResponseModel> deletePaymentInfo(int paymentId) async {
    try {
      final repository = ref.read(orderListRepositoryProvider);
      final result = await repository.deletePaymentInfo(paymentId: paymentId);
      return result;
    } catch (e) {
      debugPrint(e.toString());
      return const ResponseModel(success: false, message: "문제가 생겼습니다.");
    }
  }

  Future<ResponseModel> deleteOrderInfo(int orderId) async {
    try {
      final repository = ref.read(orderListRepositoryProvider);
      final result = await repository.deleteOrderInfo(orderId: orderId);
      return result;
    } catch (e) {
      debugPrint(e.toString());
      return const ResponseModel(success: false, message: "문제가 생겼습니다.");
    }
  }

  Future<ResponseModel> patchPurchaseConfirm(int orderId) async {
    try {
      final repository = ref.read(orderListRepositoryProvider);
      final result = await repository.patchPurchaseConfirm(orderId: orderId);
      return result;
    } catch (e) {
      debugPrint(e.toString());
      return const ResponseModel(success: false, message: "문제가 생겼습니다.");
    }
  }

  Future<PaymentCompleteResponseWrapper?> getPaymentInfo(int paymentId) async {
    try {
      final repository = ref.read(orderListRepositoryProvider);
      final paymentInfo = await repository.getPaymentInfo(paymentId: paymentId);
      return paymentInfo;
    } catch (e) {
      return null;
    }
  }

  Future<TaxInvoiceUrlResponseWrapper?> getOrderTaxInvoiceUrl(
    int orderId,
  ) async {
    try {
      final repository = ref.read(orderListRepositoryProvider);
      return await repository.getOrderTaxInvoiceUrl(orderId: orderId);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<OrderListResponseWrapper> getOrderList(
    String date, {
    int page = 0,
    int size = 10,
  }) async {
    final selectedDate = _parseLocalDate(date);
    final fromDate = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
    );
    final toDate = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
      23,
      59,
      59,
    );
    final repository = ref.read(orderListRepositoryProvider);
    final orderList = await repository.getOrderList(
      statuses: _getStatuses(state.searchType),
      fromDate: fromDate,
      toDate: toDate,
      page: page,
      size: size,
    );
    return orderList;
  }

  DateTime _parseLocalDate(String date) {
    final parts = date.split('-').map(int.parse).toList();
    return DateTime(parts[0], parts[1], parts[2]);
  }

  List<String> _getStatuses(OrderListSearchType searchType) {
    switch (searchType) {
      case OrderListSearchType.ALL:
        return [];
      case OrderListSearchType.ORDER:
        return [
          'PAYMENT_PENDING',
          'ORDERED',
          'CONFIRMED',
          'SHIPPED',
          'DELIVERED',
        ];
      case OrderListSearchType.CLAIM:
        return ['CLAIM_IN_PROGRESS'];
      case OrderListSearchType.EVIDENCE:
        return ['PURCHASE_CONFIRMED', 'SETTLEMENT_COMPLETED'];
    }
  }
}
