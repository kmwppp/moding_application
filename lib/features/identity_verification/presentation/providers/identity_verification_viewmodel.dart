import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/features/identity_verification/data/repositories/identity_verification_repository_impl.dart';
import 'package:moding_application/features/identity_verification/presentation/providers/identity_verification_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'identity_verification_viewmodel.g.dart';

@Riverpod()
class IdentityVerificationViewModel extends _$IdentityVerificationViewModel {
  @override
  IdentityVerificationState build() {
    return IdentityVerificationState.initial();
  }

  void updatePassword(String value) {
    state = state.copyWith(password: value);
  }

  Future<ResponseModel> submitReauth() async {
    final password = state.password.trim();
    if (password.isEmpty) {
      return const ResponseModel(message: '비밀번호를 입력해주세요.');
    }

    state = state.copyWith(isSubmitting: true);
    try {
      final response = await ref
          .read(identityVerificationRepositoryProvider)
          .postReAuth(password);

      await ref
          .read(tokenStorageProvider)
          .saveReauthKey(response.data.reauthKey);

      return const ResponseModel(success: true);
    } on DioException catch (e) {
      final data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return ResponseModel.fromJson(data);
      }
      return const ResponseModel(message: '비밀번호를 다시 확인해주세요.');
    } catch (_) {
      return const ResponseModel(message: '재인증 중 오류가 발생했습니다.');
    } finally {
      state = state.copyWith(isSubmitting: false);
    }
  }
}
