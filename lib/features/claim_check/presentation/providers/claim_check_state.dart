import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/claim_check/domain/entities/claim_check_response_dto.dart';

part 'claim_check_state.freezed.dart';

@freezed
abstract class ClaimCheckState with _$ClaimCheckState {
  const ClaimCheckState._();

  const factory ClaimCheckState({
    required bool isLoading,
    ClaimCheckResponseWrapper? claimDetail,
  }) = _ClaimCheckState;

  factory ClaimCheckState.initial() =>
      const ClaimCheckState(isLoading: true, claimDetail: null);
}
