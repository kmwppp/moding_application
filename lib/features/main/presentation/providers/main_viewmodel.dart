import 'package:moding_application/features/main/presentation/providers/main_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/enums/MainTab.dart';

part 'main_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class MainViewModel extends _$MainViewModel {
  @override
  MainState build() {
    return MainState.initial();
  }

  void changeTab(MainTab tab) {
    state = state.copyWith(currentTab: tab);
  }
}
