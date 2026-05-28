import 'package:moding_application/features/find_member_information/data/repositories/id/find_id_repository_impl.dart';
import 'package:moding_application/features/find_member_information/domain/entities/id/find_id_response_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'find_id_state.dart';

part 'find_id_viewmodel.g.dart';

@Riverpod()
class FindIdViewModel extends _$FindIdViewModel {
  @override
  FindIdState build() {
    return FindIdState.initial();
  }

  void setLoginId(String loginId) {
    state = state.copyWith(loginId: loginId);
  }

  Future<FindIdResponseDto> postFindId(String identityVerificationKey) async {
    state = state.copyWith(isLoading: true);
    try {
      final response = await ref
          .read(findIdRepositoryProvider)
          .postFindId(identityVerificationKey);

      if (response.success && response.loginId != null) {
        state = state.copyWith(loginId: response.loginId!);
      }

      return response;
    } finally {
      if (ref.mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }
}
