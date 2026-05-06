import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enums/MainTab.dart';

part 'main_state.freezed.dart';

@freezed
abstract class MainState with _$MainState {
  const MainState._();

  const factory MainState({required MainTab currentTab}) = _MainState;

  factory MainState.initial() => const MainState(currentTab: MainTab.home);
}
