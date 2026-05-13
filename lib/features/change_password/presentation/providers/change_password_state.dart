import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_state.freezed.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const ChangePasswordState._();

  const factory ChangePasswordState({required bool isSubmitting}) =
      _ChangePasswordState;

  factory ChangePasswordState.initial() =>
      const ChangePasswordState(isSubmitting: false);
}
