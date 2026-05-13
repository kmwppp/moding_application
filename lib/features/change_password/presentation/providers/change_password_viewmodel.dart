import 'package:flutter/foundation.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/change_password/data/repositories/change_password_repository_impl.dart';
import 'package:moding_application/features/change_password/presentation/providers/change_password_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_viewmodel.g.dart';

@Riverpod()
class ChangePasswordViewModel extends _$ChangePasswordViewModel {
  @override
  ChangePasswordState build() {
    return ChangePasswordState.initial();
  }

  Future<ResponseModel> patchChangePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    state = state.copyWith(isSubmitting: true);

    try {
      final repository = ref.read(changePasswordRepositoryProvider);
      final response = await repository.patchChangePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );

      if (!ref.mounted) return response;
      state = state.copyWith(isSubmitting: false);
      return response;
    } catch (e) {
      debugPrint(e.toString());
      if (ref.mounted) {
        state = state.copyWith(isSubmitting: false);
      }
      return const ResponseModel(success: false, message: '비밀번호 변경에 실패했습니다.');
    }
  }
}
