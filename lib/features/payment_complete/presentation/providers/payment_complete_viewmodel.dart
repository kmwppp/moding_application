import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/payment_complete_repository_impl.dart';
import '../../domain/entities/change_delivery_info_request_dto.dart';

part 'payment_complete_viewmodel.g.dart';

@Riverpod()
class PaymentCompleteViewModel extends _$PaymentCompleteViewModel {
  @override
  PaymentCompleteState build(int paymentId) {
    _init(paymentId);
    return PaymentCompleteState.initial();
  }

  Future<void> _init(int paymentId) async {
    await getPaymentCompleteInfo(paymentId);
  }

  Future<void> getPaymentCompleteInfo(int paymentId) async {
    try {
      final repository = ref.read(paymentCompleteRepositoryProvider);
      final info = await repository.getPaymentCompleteInfo(paymentId);
      state = state.copyWith(paymentInfo: info, isLoading: false);
    } catch (e) {
      print(e);
    }
  }
}
