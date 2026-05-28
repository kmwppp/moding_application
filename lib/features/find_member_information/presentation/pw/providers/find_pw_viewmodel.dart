import 'package:moding_application/features/find_member_information/data/repositories/pw/find_pw_repository_impl.dart';
import 'package:moding_application/features/find_member_information/domain/entities/pw/find_pw_response_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'find_pw_state.dart';

part 'find_pw_viewmodel.g.dart';

@Riverpod()
class FindPwViewModel extends _$FindPwViewModel {
  @override
  FindPwState build() {
    return FindPwState.initial();
  }

  void updateLoginId(String value) {
    state = state.copyWith(loginId: value.trim());
  }

  void updateNewPassword(String value) {
    state = state.copyWith(newPassword: value);
  }

  void updateNewPasswordConfirm(String value) {
    state = state.copyWith(newPasswordConfirm: value);
  }

  void setIdentityVerificationKey(String value) {
    state = state.copyWith(identityVerificationKey: value);
  }

  String? validate() {
    if (state.loginId.trim().isEmpty) {
      return '아이디를 입력해주세요.';
    }
    if (state.newPassword.trim().isEmpty) {
      return '새 비밀번호를 입력해주세요.';
    }
    if (state.newPassword != state.newPasswordConfirm) {
      return '변경할 비밀번호가 일치하지 않습니다.';
    }
    return null;
  }

  Future<FindPwResponseDto> patchFindPassword() async {
    state = state.copyWith(isLoading: true);
    try {
      return await ref
          .read(findPwRepositoryProvider)
          .patchFindPassword(
            loginId: state.loginId,
            identityVerificationKey: state.identityVerificationKey,
            newPassword: state.newPassword,
          );
    } finally {
      if (ref.mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }
}
