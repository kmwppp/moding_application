import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'alarm_state.dart';

part 'alarm_viewmodel.g.dart';

@Riverpod()
class AlarmViewModel extends _$AlarmViewModel {
  @override
  AlarmState build() {
    return AlarmState.initial();
  }
}
