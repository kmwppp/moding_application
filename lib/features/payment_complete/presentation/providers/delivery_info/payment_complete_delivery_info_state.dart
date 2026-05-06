import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../order/domain/entities/address_dto.dart';
import '../../../../order/domain/enums/delivery_request_type.dart';

part 'payment_complete_delivery_info_state.freezed.dart';

@freezed
abstract class PaymentCompleteDeliveryInfoState
    with _$PaymentCompleteDeliveryInfoState {
  const PaymentCompleteDeliveryInfoState._();

  const factory PaymentCompleteDeliveryInfoState({
    required AddressDto? selectedAddress,
    // 배송 요청 사항 리스트
    required List<DeliveryRequestType> deliveryRequestList,
    // 배송 요청 사항
    required DeliveryRequestType selectedRequest,
    // 배송 요청 사항 기타
    required String deliveryRequestText,
  }) = _PaymentCompleteDeliveryInfoState;

  factory PaymentCompleteDeliveryInfoState.initial() =>
      PaymentCompleteDeliveryInfoState(
        deliveryRequestList: DeliveryRequestType.values,
        selectedRequest: DeliveryRequestType.direct,
        deliveryRequestText: "",
        selectedAddress: null,
      );
}
