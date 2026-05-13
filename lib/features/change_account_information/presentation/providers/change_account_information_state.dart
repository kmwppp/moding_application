import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/change_account_information/domain/entities/account_info_response_dto.dart';

part 'change_account_information_state.freezed.dart';

@freezed
abstract class ChangeAccountInformationState
    with _$ChangeAccountInformationState {
  const ChangeAccountInformationState._();

  const factory ChangeAccountInformationState({
    required bool isLoading,
    required bool isSubmitting,
    AccountInfoResponseDto? accountInfo,
  }) = _ChangeAccountInformationState;

  factory ChangeAccountInformationState.initial() =>
      const ChangeAccountInformationState(isLoading: true, isSubmitting: false);
}
