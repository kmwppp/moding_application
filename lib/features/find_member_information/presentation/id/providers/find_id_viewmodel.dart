import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'find_id_state.dart';

part 'find_id_viewmodel.g.dart';

@Riverpod()
class FindIdViewModel extends _$FindIdViewModel {
  @override
  FindIdState build() {
    return FindIdState.initial();
  }
}
