import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm_state.freezed.dart';

@freezed
abstract class AlarmState with _$AlarmState {
  const factory AlarmState({@Default(false) bool isLoading}) = _AlarmState;

  factory AlarmState.initial() => AlarmState();
}
