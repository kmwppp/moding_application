import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_order_response_dto.dart';

import '../../../order/domain/entities/address_dto.dart';
import '../../../order/domain/enums/delivery_request_type.dart';
import '../../../order/domain/enums/easy_payments_method.dart';
import '../../../order/domain/enums/payments_method.dart';

part 'cart_order_state.freezed.dart';

@freezed
abstract class CartOrderState with _$CartOrderState {
  const CartOrderState._();

  const factory CartOrderState({
    required bool isLoading,
    required CartOrderResponseDto? cartOrderInfo,

    required List<DeliveryRequestType> deliveryRequestList,
    // 배송 요청 사항
    required DeliveryRequestType selectedRequest,
    // 배송 요청 사항 기타
    required String deliveryRequestText,

    @Default(0) int tick,

    // 결제 수단
    required PaymentsMethod paymentMethod,
    // 간편 결제 수단
    required EasyPaymentsMethod easyPaymentMethod,

    /// 배송지 리스트
    required bool addressListLoading,
    required AddressListResponse? addressList,

    /// 배송지 수정 선택된 배송지 정보
    required AddressDto? selectedAddress,
  }) = _CartOrderState;

  factory CartOrderState.initial() => CartOrderState(
    isLoading: true,
    cartOrderInfo: null,
    deliveryRequestList: DeliveryRequestType.values,
    selectedRequest: DeliveryRequestType.direct,
    deliveryRequestText: "",
    paymentMethod: PaymentsMethod.vbank,
    easyPaymentMethod: EasyPaymentsMethod.naverpayCard,
    addressListLoading: true,
    addressList: null,
    selectedAddress: null,
  );
}
