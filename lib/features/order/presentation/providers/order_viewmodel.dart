import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/order/data/repositories/order_repository_impl.dart';
import 'package:moding_application/features/order/domain/entities/address_dto.dart';
import 'package:moding_application/features/order/domain/entities/create_order_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/order_request_dto.dart';
import 'package:moding_application/features/order/presentation/providers/order_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/address_request_dto.dart';
import '../../domain/entities/order_response_dto.dart' hide OrderItemDto;
import '../../domain/enums/delivery_request_type.dart';
import '../../domain/enums/easy_payments_method.dart';
import '../../domain/enums/payments_method.dart';

part 'order_viewmodel.g.dart';

@Riverpod()
class OrderViewModel extends _$OrderViewModel {
  @override
  OrderState build() {
    return OrderState.initial();
  }

  void updateDeliveryRequest(DeliveryRequestType request) {
    state = state.copyWith(selectedRequest: request, deliveryRequestText: "");
  }

  void updateDeliveryRequestText(String request) {
    state = state.copyWith(deliveryRequestText: request);
  }

  void updatePaymentMethod(PaymentsMethod method) {
    state = state.copyWith(paymentMethod: method);
  }

  void updateEasyPaymentMethod(EasyPaymentsMethod method) {
    state = state.copyWith(easyPaymentMethod: method);
  }

  void selectAddress(AddressDto address) {
    state = state.copyWith(
      orderInfo: state.orderInfo!.copyWith(deliveryAddress: address),
    );
  }

  void updateAddress(String address, String zipCode) {
    state = state.copyWith(
      selectedAddress: state.selectedAddress!.copyWith(
        address: address,
        zipCode: zipCode,
      ),
    );
  }

  void resetSelectedAddress() {
    state = state.copyWith(
      isLoading: false,
      selectedAddress: AddressDto(
        id: 0,
        name: '',
        recipientName: '',
        zipCode: '',
        address: '주소를 검색해주세요.',
        addressDetail: '',
        phone: '',
      ),
    );
  }

  void updatePlaceName(String value) {
    state = state.copyWith(
      selectedAddress: state.selectedAddress?.copyWith(name: value),
    );
  }

  void updateRecipientName(String value) {
    state = state.copyWith(
      selectedAddress: state.selectedAddress?.copyWith(recipientName: value),
    );
  }

  void updateAddressDetail(String value) {
    state = state.copyWith(
      selectedAddress: state.selectedAddress?.copyWith(addressDetail: value),
    );
  }

  void updatePhone(String value) {
    state = state.copyWith(
      selectedAddress: state.selectedAddress?.copyWith(phone: value),
    );
  }

  void updateIsDefault(bool value) {
    state = state.copyWith(
      selectedAddress: state.selectedAddress?.copyWith(isDefault: value),
    );
  }

  void updateLastAgreement(bool value) {
    state = state.copyWith(lastAgreement: value);
  }

  Future<void> getOrderInfo(OrderRequestDto requestDto) async {
    try {
      final repository = ref.read(orderRepositoryProvider);
      final orderInfo = await repository.getOrderInfo(requestDto);
      state = state.copyWith(
        orderInfo: orderInfo,
        isLoading: false,
        selectedAddress: orderInfo.deliveryAddress,
      );
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> getAddressList() async {
    try {
      final repository = ref.read(orderRepositoryProvider);
      final addressListResponse = await repository.getAddressList();
      state = state.copyWith(
        addressList: addressListResponse,
        addressListLoading: false,
      );
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> getAddressDetail(int addressId) async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(orderRepositoryProvider);
      final address = await repository.getAddressDetail(addressId);
      state = state.copyWith(isLoading: false, selectedAddress: address);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      debugPrint('$e');
    }
  }

  Future<ResponseModel> putAddress(int addressId) async {
    try {
      final repository = ref.read(orderRepositoryProvider);

      // 현재 수정 중인 데이터 DTO 생성
      final requestDto = AddressRequestDto(
        name: state.selectedAddress?.name ?? "",
        address: state.selectedAddress?.address ?? "",
        addressDetail: state.selectedAddress?.addressDetail ?? "",
        phone: state.selectedAddress?.phone ?? "",
        isDefault: state.selectedAddress?.isDefault ?? false,
        recipientName: state.selectedAddress?.recipientName ?? "",
        zipCode: state.selectedAddress?.zipCode ?? "",
      );

      final result = await repository.putAddress(addressId, requestDto);

      if (result.success) {
        final currentList = state.addressList;
        if (currentList != null) {
          // 1. map을 순회하며 ID가 같은 항목만 수정된 데이터로 교체
          final updatedData = currentList.data.map((address) {
            return address.id == addressId
                ? state.selectedAddress! // 현재 상세 정보(수정본)로 교체
                : address; // 나머지는 그대로 유지
          }).toList();

          // 2. 새로운 리스트로 상태 업데이트
          state = state.copyWith(
            addressList: currentList.copyWith(data: updatedData),
          );
        }
      }
      return result;
    } catch (e) {
      debugPrint('$e');
      return ResponseModel(success: false, message: "수정 중 오류가 발생했습니다.");
    }
  }

  /// 배송지 추가 (POST)
  Future<ResponseModel> postAddress() async {
    try {
      final repository = ref.read(orderRepositoryProvider);

      final requestDto = AddressRequestDto(
        name: state.selectedAddress?.name ?? "",
        address: state.selectedAddress?.address ?? "",
        addressDetail: state.selectedAddress?.addressDetail ?? "",
        phone: state.selectedAddress?.phone ?? "",
        isDefault: state.selectedAddress?.isDefault ?? false,
        recipientName: state.selectedAddress?.recipientName ?? "",
        zipCode: state.selectedAddress?.zipCode ?? "",
      );

      final result = await repository.postAddress(requestDto);

      if (result.success) {
        await getAddressList();
      }
      return result;
    } catch (e) {
      return ResponseModel(success: false, message: "등록 중 오류가 발생했습니다.");
    }
  }

  Future<ResponseModel> deleteAddress(int addressId) async {
    try {
      final repository = ref.read(orderRepositoryProvider);
      final result = await repository.deleteAddress(addressId);

      // 1. 성공 시에만 로컬 상태 업데이트
      if (result.success) {
        final currentAddressList = state.addressList;

        if (currentAddressList != null) {
          // 2. 해당 addressId와 일치하지 않는 데이터들만 골라서 새로운 리스트 생성
          final updatedData = currentAddressList.data
              .where((address) => address.id != addressId)
              .toList();

          // 3. 상태 업데이트 (깊은 복사)
          state = state.copyWith(
            addressList: currentAddressList.copyWith(data: updatedData),
          );
        }
      }

      return result;
    } catch (e) {
      return ResponseModel(success: false, message: "일시적인 오류가 발생했습니다.");
    }
  }

  Future<CreateOrderResponseWrapper> postCreateOrder({
    required String idempotencyKey,
  }) async {
    try {
      final repository = ref.read(orderRepositoryProvider);

      final requestDto = CreateOrderRequestDto(
        idempotencyKey: idempotencyKey,
        deliveryAddressId: state.selectedAddress!.id,
        deliveryRequest: _getDeliveryRequest(
          state.selectedRequest,
          state.deliveryRequestText,
        ),
        items: [
          OrderItemDto(
            productId: state.orderInfo?.productId ?? 0,
            productOptionId: state.orderInfo?.items[0].productOptionId ?? 0,
            quantity: state.orderInfo?.items[0].quantity ?? 0,
          ),
        ],
      );

      final result = await repository.postCreateOrder(requestDto);
      debugPrint('$result');
      return result;
    } catch (e) {
      debugPrint('$e');
      return CreateOrderResponseWrapper(success: false, data: null);
    }
  }

  String _getDeliveryRequest(
    DeliveryRequestType requestType,
    String requestText,
  ) {
    switch (requestType) {
      case DeliveryRequestType.direct:
      case DeliveryRequestType.front:
      case DeliveryRequestType.callBefore:
        return requestType.label;
      case DeliveryRequestType.etc:
        return requestText;
    }
  }
}
