import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'find_pw_state.dart';

part 'find_pw_viewmodel.g.dart';

@Riverpod()
class FindPwViewModel extends _$FindPwViewModel {
  @override
  FindPwState build() {
    return FindPwState.initial();
  }
}
