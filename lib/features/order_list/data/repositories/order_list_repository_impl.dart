import 'package:moding_application/core/network/entities/tax_invoice_url_response_dto.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/order_list/domain/entities/date_list_response_dto.dart';
import 'package:moding_application/features/order_list/domain/entities/order_list_response_dto.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/order_list_repository.dart';
import '../data_source/order_list_data_source.dart';

part 'order_list_repository_impl.g.dart';

@riverpod
OrderListRepository orderListRepository(Ref ref) {
  final dataSource = ref.watch(orderListDataSourceProvider);
  return OrderListRepositoryImpl(dataSource);
}

class OrderListRepositoryImpl implements OrderListRepository {
  final OrderListDataSource _dataSource;

  OrderListRepositoryImpl(this._dataSource);

  @override
  Future<DateListResponseWrapper> getOrderDateList({
    required List<String> statuses,
  }) async {
    final response = await _dataSource.getOrderDateList(statuses: statuses);
    return DateListResponseWrapper.fromJson(response);
  }

  @override
  Future<OrderListResponseWrapper> getOrderList({
    required List<String> statuses,
    required DateTime fromDate,
    required DateTime toDate,
    required int page,
    required int size,
  }) async {
    final response = await _dataSource.getOrderList(
      statuses: statuses,
      fromDate: fromDate,
      toDate: toDate,
      page: page,
      size: size,
    );
    return OrderListResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> patchPurchaseConfirm({required int orderId}) async {
    final response = await _dataSource.patchPurchaseConfirm(orderId);
    return ResponseModel.fromJson(response);
  }

  @override
  Future<PaymentCompleteResponseWrapper> getPaymentInfo({
    required int paymentId,
  }) async {
    final response = await _dataSource.getPaymentInfo(paymentId);
    return PaymentCompleteResponseWrapper.fromJson(response);
  }

  @override
  Future<TaxInvoiceUrlResponseWrapper> getOrderTaxInvoiceUrl({
    required int orderId,
  }) async {
    final response = await _dataSource.getOrderTaxInvoiceUrl(orderId);
    return TaxInvoiceUrlResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> deleteOrderInfo({required int orderId}) async {
    final response = await _dataSource.deleteOrderInfo(orderId);
    return _deleteResponseToModel(response.statusCode, response.data);
  }

  @override
  Future<ResponseModel> deletePaymentInfo({required int paymentId}) async {
    final response = await _dataSource.deletePaymentInfo(paymentId);
    return _deleteResponseToModel(response.statusCode, response.data);
  }

  ResponseModel _deleteResponseToModel(int? statusCode, dynamic data) {
    if (statusCode == 204) {
      return const ResponseModel(success: true, message: "주문을 취소하였습니다.");
    }

    if (data is Map<String, dynamic>) {
      return ResponseModel.fromJson(data);
    }

    return const ResponseModel(success: false, message: "문제가 생겼습니다.");
  }
}
