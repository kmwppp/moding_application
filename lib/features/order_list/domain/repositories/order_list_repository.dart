import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/order_list/domain/entities/date_list_response_dto.dart';

import '../../../payment_complete/domain/entities/payment_complete_response_dto.dart';
import '../entities/order_list_response_dto.dart';

abstract class OrderListRepository {
  Future<DateListResponseWrapper> getOrderDateList({
    required List<String> statuses,
  });

  Future<OrderListResponseWrapper> getOrderList({
    required List<String> statuses,
    required DateTime fromDate,
    required DateTime toDate,
    required int page,
    required int size,
  });

  Future<ResponseModel> patchPurchaseConfirm({required int orderId});

  Future<PaymentCompleteResponseWrapper> getPaymentInfo({
    required int paymentId,
  });

  Future<ResponseModel> deletePaymentInfo({required int paymentId});

  Future<ResponseModel> deleteOrderInfo({required int orderId});
}
