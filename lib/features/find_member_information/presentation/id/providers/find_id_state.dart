import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_id_state.freezed.dart';

@freezed
abstract class FindIdState with _$FindIdState {
  const FindIdState._();

  const factory FindIdState({
    required bool isLoading,
    @Default('') String loginId,
  }) = _FindIdState;

  factory FindIdState.initial() => FindIdState(isLoading: false);
}
