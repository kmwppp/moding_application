import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/order/domain/entities/address_dto.dart';
import 'package:moding_application/features/order/domain/entities/order_response_dto.dart';
import 'package:moding_application/features/order/domain/enums/payments_method.dart';

import '../../domain/enums/delivery_request_type.dart';
import '../../domain/enums/easy_payments_method.dart';

part 'order_state.freezed.dart';

@freezed
abstract class OrderState with _$OrderState {
  const OrderState._();

  const factory OrderState({
    required bool isLoading,
    // 배송 요청 사항 리스트
    required List<DeliveryRequestType> deliveryRequestList,
    // 배송 요청 사항
    required DeliveryRequestType selectedRequest,
    // 배송 요청 사항 기타
    required String deliveryRequestText,

    // 결제 수단
    required PaymentsMethod paymentMethod,
    // 간편 결제 수단
    required EasyPaymentsMethod easyPaymentMethod,

    required OrderResponseDto? orderInfo,

    @Default(0) int tick,

    /// 배송지 리스트
    required bool addressListLoading,
    required AddressListResponse? addressList,

    /// 배송지 수정 선택된 배송지 정보
    required AddressDto? selectedAddress,

    required bool lastAgreement,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
    isLoading: true,
    deliveryRequestList: DeliveryRequestType.values,
    selectedRequest: DeliveryRequestType.direct,
    deliveryRequestText: "",
    paymentMethod: PaymentsMethod.vbank,
    easyPaymentMethod: EasyPaymentsMethod.naverpayCard,
    orderInfo: null,
    addressListLoading: true,
    addressList: null,
    selectedAddress: null,
    lastAgreement: false,
  );
}
