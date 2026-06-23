import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/change_password/data/data_source/change_password_data_source.dart';
import 'package:moding_application/features/change_password/domain/entities/identity_verify_password_reset_result.dart';
import 'package:moding_application/features/change_password/domain/repositories/change_password_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_repository_impl.g.dart';

@riverpod
ChangePasswordRepository changePasswordRepository(Ref ref) {
  final dataSource = ref.watch(changePasswordDataSourceProvider);
  return ChangePasswordRepositoryImpl(dataSource);
}

class ChangePasswordRepositoryImpl implements ChangePasswordRepository {
  final ChangePasswordDataSource _dataSource;

  ChangePasswordRepositoryImpl(this._dataSource);

  @override
  Future<ResponseModel> patchChangePassword({
    required String identityKey,
    required String newPassword,
  }) async {
    try {
      final response = await _dataSource.patchChangePassword(
        identityKey: identityKey,
        newPassword: newPassword,
      );
      return ResponseModel.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return ResponseModel.fromJson(e.response!.data);
        } catch (_) {
          return const ResponseModel(success: false, message: '서버 응답 형식 오류');
        }
      }
      return const ResponseModel(success: false, message: '비밀번호 변경에 실패했습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '비밀번호 변경에 실패했습니다.');
    }
  }

  @override
  Future<IdentityVerifyPasswordResetResult> verifyIdentityAndResetPassword({
    required String identityVerificationKey,
    required String newPassword,
  }) async {
    try {
      final response = await _dataSource.verifyIdentityAndResetPassword(
        identityVerificationKey: identityVerificationKey,
        newPassword: newPassword,
      );
      return IdentityVerifyPasswordResetResult.fromJson(response);
    } on DioException catch (e) {
      if (e.response?.data is Map<String, dynamic>) {
        try {
          return IdentityVerifyPasswordResetResult.fromJson(
            e.response!.data as Map<String, dynamic>,
          );
        } catch (_) {
          return const IdentityVerifyPasswordResetResult(
            success: false,
            message: '서버 응답 형식 오류',
          );
        }
      }
      return const IdentityVerifyPasswordResetResult(
        success: false,
        message: '비밀번호 재설정에 실패했습니다.',
      );
    } catch (_) {
      return const IdentityVerifyPasswordResetResult(
        success: false,
        message: '비밀번호 재설정에 실패했습니다.',
      );
    }
  }
}
