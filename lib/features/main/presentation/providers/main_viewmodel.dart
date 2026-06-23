import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/main/presentation/providers/main_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/enums/MainTab.dart';

part 'main_viewmodel.g.dart';

/// 로그인 등으로 /main 전체를 리셋해야 할 때 증가시키는 신호.
/// MainPage가 이 값을 watch 하여 모든 탭 페이지를 새로 빌드한다.
class MainResetTick extends Notifier<int> {
  @override
  int build() => 0;

  void trigger() => state = state + 1;
}

final mainResetTickProvider = NotifierProvider<MainResetTick, int>(
  MainResetTick.new,
);

@Riverpod(keepAlive: true)
class MainViewModel extends _$MainViewModel {
  @override
  MainState build() {
    return MainState.initial();
  }

  void changeTab(MainTab tab) {
    state = state.copyWith(previousTab: state.currentTab, currentTab: tab);
  }
}
