import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/order/domain/entities/address_dto.dart';
import 'package:moding_application/features/order/domain/entities/address_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/create_order_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/order_response_dto.dart';
import 'package:moding_application/features/order/domain/entities/payments/payments_confirm_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/payments/payments_confirm_response_dto.dart';
import 'package:moding_application/features/order/domain/entities/payments/payments_fail_request_dto.dart';

import '../entities/order_request_dto.dart';

abstract class OrderRepository {
  Future<OrderResponseDto> getOrderInfo(OrderRequestDto requestDto);

  Future<AddressListResponse> getAddressList();

  Future<AddressDto> getAddressDetail(int addressId);

  Future<ResponseModel> putAddress(int addressId, AddressRequestDto request);

  Future<ResponseModel> deleteAddress(int addressId);

  Future<ResponseModel> postAddress(AddressRequestDto request);

  Future<CreateOrderResponseWrapper> postCreateOrder(
    CreateOrderRequestDto request,
  );

  Future<PaymentsConfirmResponseWrapper> postPaymentsConfirm(
    PaymentsConfirmRequestDto request,
  );

  Future<ResponseModel> postPaymentsFail(PaymentsFailRequestDto request);
}
