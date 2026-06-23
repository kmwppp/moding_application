import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/network/exceptions/api_code_exception.dart';
import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_request_dto.dart';
import 'package:moding_application/features/cart_order/domain/entities/cart_create_order_response_dto.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_state.dart';
import 'package:moding_application/features/order/domain/entities/payments/payments_confirm_request_dto.dart';
import 'package:moding_application/features/order/domain/entities/payments/payments_confirm_response_dto.dart';
import 'package:moding_application/features/order/domain/entities/payments/payments_fail_request_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../order/data/repositories/order_repository_impl.dart';
import '../../../order/domain/entities/address_dto.dart';
import '../../../order/domain/entities/address_request_dto.dart';
import '../../../order/domain/enums/delivery_request_type.dart';
import '../../../order/domain/enums/easy_payments_method.dart';
import '../../../order/domain/enums/payments_method.dart';
import '../../../order/domain/enums/pg_provider.dart';
import '../../data/repositories/cart_order_repository_impl.dart';
import '../../domain/entities/cart_order_response_dto.dart';

part 'cart_order_viewmodel.g.dart';

@Riverpod()
class CartOrderViewModel extends _$CartOrderViewModel {
  @override
  CartOrderState build() {
    return CartOrderState.initial();
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
    final dto = DeliveryAddress(
      id: address.id,
      name: address.name,
      recipientName: address.recipientName,
      zipCode: address.zipCode,
      address: address.address,
      addressDetail: address.addressDetail,
      phone: address.phone,
    );
    state = state.copyWith(
      cartOrderInfo: state.cartOrderInfo!.copyWith(
        data: state.cartOrderInfo!.data.copyWith(deliveryAddress: dto),
      ),
    );
    //state.cartOrderInfo.data.copyWith(deliveryAddress: dto),
  }

  void updateAddress(String address, String zipCode, String sigunguCode) {
    state = state.copyWith(
      selectedAddress: state.selectedAddress!.copyWith(
        address: address,
        zipCode: zipCode,
        sigunguCode: sigunguCode,
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
        sigunguCode: '',
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

  Future<void> getCartOrderInfo(
    List<int> cartItemIds, {
    PgProvider? pgProvider,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final repository = ref.read(cartOrderRepositoryProvider);
      final cartOrderInfo = await repository.getCartOrderInfo(
        cartItemIds,
        pgProvider: pgProvider,
      );
      final addressDto = AddressDto(
        id: cartOrderInfo.data.deliveryAddress.id,
        name: cartOrderInfo.data.deliveryAddress.name,
        recipientName: cartOrderInfo.data.deliveryAddress.recipientName,
        zipCode: cartOrderInfo.data.deliveryAddress.zipCode,
        sigunguCode: '',
        address: cartOrderInfo.data.deliveryAddress.address,
        addressDetail: cartOrderInfo.data.deliveryAddress.addressDetail,
        phone: cartOrderInfo.data.deliveryAddress.phone,
      );
      state = state.copyWith(
        isLoading: false,
        cartOrderInfo: cartOrderInfo,
        selectedAddress: addressDto,
      );
    } on ApiCodeException {
      state = state.copyWith(isLoading: false);
      rethrow;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      // ignore: avoid_print
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
        sigunguCode: state.selectedAddress?.sigunguCode ?? "",
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
        sigunguCode: state.selectedAddress?.sigunguCode ?? "",
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

  Future<ResponseModel> patchDefaultAddress(int addressId) async {
    try {
      final repository = ref.read(orderRepositoryProvider);
      final result = await repository.patchDefaultAddress(addressId);
      if (result.success) {
        await getAddressList();
      }
      return result;
    } catch (e) {
      debugPrint('$e');
      return ResponseModel(success: false, message: "기본 배송지 설정 중 오류가 발생했습니다.");
    }
  }

  Future<CartCreateOrderResponseWrapper> postCreateCartOrder({
    required String idempotencyKey,
    required List<int> cartItemIds,
    PgProvider? pgProvider,
  }) async {
    try {
      final repository = ref.read(cartOrderRepositoryProvider);
      final requestDto = CartCreateOrderRequestDto(
        idempotencyKey: idempotencyKey,
        cartItemIds: cartItemIds,
        deliveryAddressId: state.selectedAddress!.id,
        deliveryRequest: _getDeliveryRequest(
          state.selectedRequest,
          state.deliveryRequestText,
        ),
        pgProvider: pgProvider,
      );

      final result = await repository.postCreateCartOrder(requestDto);
      return result;
    } on ApiCodeException {
      rethrow;
    } catch (e) {
      debugPrint('$e');

      return CartCreateOrderResponseWrapper(success: false, data: null);
    }
  }

  Future<PaymentsConfirmResponseWrapper?> postPaymentsConfirm({
    required String paymentKey,
    required String paymentCode,
    required int amount,
  }) async {
    try {
      appLog(
        '[PaymentsConfirm] cart viewmodel request -> paymentKey=$paymentKey, paymentCode=$paymentCode, amount=$amount',
      );
      final repository = ref.read(orderRepositoryProvider);
      final response = await repository.postPaymentsConfirm(
        PaymentsConfirmRequestDto(
          paymentKey: paymentKey,
          paymentCode: paymentCode,
          amount: amount,
        ),
      );
      appLog(
        '[PaymentsConfirm] cart viewmodel success -> paymentId=${response.data.paymentId}',
      );
      return response;
    } catch (e) {
      appLog('[PaymentsConfirm] cart viewmodel error -> $e');
      return null;
    }
  }

  Future<ResponseModel> postPaymentsFail({
    required String paymentCode,
    required String errorCode,
    required String errorMessage,
  }) async {
    try {
      final repository = ref.read(orderRepositoryProvider);
      return await repository.postPaymentsFail(
        PaymentsFailRequestDto(
          paymentCode: paymentCode,
          errorCode: errorCode,
          errorMessage: errorMessage,
        ),
      );
    } catch (e) {
      debugPrint('$e');
      return const ResponseModel(success: false, message: '결제 실패 처리에 실패했습니다.');
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
