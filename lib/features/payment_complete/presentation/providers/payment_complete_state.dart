import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/payment_complete/domain/entities/payment_complete_response_dto.dart';

part 'payment_complete_state.freezed.dart';

@freezed
abstract class PaymentCompleteState with _$PaymentCompleteState {
  const PaymentCompleteState._();

  const factory PaymentCompleteState({
    @Default(true) bool isLoading,
    @Default(null) PaymentCompleteResponseWrapper? paymentInfo,
  }) = _PaymentCompleteState;

  factory PaymentCompleteState.initial() => PaymentCompleteState();
}
