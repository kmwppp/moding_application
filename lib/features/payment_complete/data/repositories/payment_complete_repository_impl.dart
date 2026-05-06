import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/payment_complete/data/data_source/payment_complete_data_source.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';
import 'package:moding_application/features/payment_complete/domain/repositories/payment_complete_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/change_delivery_info_request_dto.dart';

part 'payment_complete_repository_impl.g.dart';

@riverpod
PaymentCompleteRepository paymentCompleteRepository(Ref ref) {
  final dataSource = ref.watch(paymentCompleteDataSourceProvider);
  return PaymentCompleteRepositoryImpl(dataSource);
}

class PaymentCompleteRepositoryImpl implements PaymentCompleteRepository {
  final PaymentCompleteDataSource _dataSource;

  PaymentCompleteRepositoryImpl(this._dataSource);

  @override
  Future<PaymentCompleteResponseWrapper> getPaymentCompleteInfo(
    int paymentId,
  ) async {
    final response = await _dataSource.getPaymentCompleteInfo(paymentId);
    return PaymentCompleteResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> changeDeliveryAddress(
    int orderId,
    ChangeDeliveryInfoRequestDto request,
  ) async {
    final response = await _dataSource.changeDeliveryAddress(orderId, request);
    return ResponseModel.fromJson(response);
  }
}
