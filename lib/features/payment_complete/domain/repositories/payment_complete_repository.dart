import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';

import '../entities/change_delivery_info_request_dto.dart';

abstract class PaymentCompleteRepository {
  Future<PaymentCompleteResponseWrapper> getPaymentCompleteInfo(int paymentId);

  Future<ResponseModel> changeDeliveryAddress(
    int orderId,
    ChangeDeliveryInfoRequestDto request,
  );
}
