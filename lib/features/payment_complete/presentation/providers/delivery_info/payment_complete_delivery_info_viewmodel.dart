import 'package:moding_application/core/utils/log_util.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/delivery_info/payment_complete_delivery_info_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/network/entities/response_model.dart';
import '../../../../order/domain/entities/address_dto.dart';
import '../../../../order/domain/enums/delivery_request_type.dart';
import '../../../data/repositories/payment_complete_repository_impl.dart';
import '../../../domain/entities/change_delivery_info_request_dto.dart';

part 'payment_complete_delivery_info_viewmodel.g.dart';

@Riverpod()
class PaymentCompleteDeliveryInfoViewModel
    extends _$PaymentCompleteDeliveryInfoViewModel {
  @override
  PaymentCompleteDeliveryInfoState build() {
    return PaymentCompleteDeliveryInfoState.initial();
  }

  void selectAddress(AddressDto address) {
    state = state.copyWith(selectedAddress: address);
  }

  void resetSelectedAddress() {
    state = state.copyWith(
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

  Future<ResponseModel> changeDeliveryAddress({
    required int orderId,
    required int deliveryAddressId,
    required DeliveryRequestType deliveryRequestType,
    required String deliveryRequestText,
  }) async {
    try {
      final repository = ref.read(paymentCompleteRepositoryProvider);
      final request = ChangeDeliveryInfoRequestDto(
        deliveryAddressId: deliveryAddressId,
        deliveryRequest: _getDeliveryRequest(
          deliveryRequestType,
          deliveryRequestText,
        ),
      );
      final response = await repository.changeDeliveryAddress(orderId, request);
      return response;
    } catch (e) {
      appLog(e);
      return ResponseModel(success: false, message: "알 수 없는 오류가 발생했습니다.");
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
