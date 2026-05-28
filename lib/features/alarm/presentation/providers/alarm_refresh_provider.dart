import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alarm_refresh_provider.g.dart';

@riverpod
class AlarmRefresh extends _$AlarmRefresh {
  @override
  int build() => 0;

  void notifyRefresh() {
    state++;
  }
}
