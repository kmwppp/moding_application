import 'package:dio/dio.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/edit_my_info/data/data_source/edit_my_info_data_source.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/notification_settings_response_dto.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/user_info_masking_response_dto.dart';
import 'package:moding_application/features/edit_my_info/domain/repositories/edit_my_info_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_my_info_repository_impl.g.dart';

@riverpod
EditMyInfoRepository editMyInfoRepository(Ref ref) {
  final dataSource = ref.watch(editMyInfoDataSourceProvider);
  return EditMyInfoRepositoryImpl(dataSource);
}

class EditMyInfoRepositoryImpl implements EditMyInfoRepository {
  final EditMyInfoDataSource _dataSource;

  EditMyInfoRepositoryImpl(this._dataSource);

  @override
  Future<UserInfoMaskingResponseWrapper> getMaskingMyInfo() async {
    final response = await _dataSource.getMaskingMyInfo();
    return UserInfoMaskingResponseWrapper.fromJson(response);
  }

  @override
  Future<NotificationSettingsResponseWrapper> getNotificationSettings() async {
    final response = await _dataSource.getNotificationSettings();
    return NotificationSettingsResponseWrapper.fromJson(response);
  }

  @override
  Future<ResponseModel> patchNotificationSettings({
    required bool notificationEnabled,
  }) async {
    try {
      final response = await _dataSource.patchNotificationSettings(
        notificationEnabled: notificationEnabled,
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
      return const ResponseModel(success: false, message: '알림 설정 변경에 실패했습니다.');
    } catch (_) {
      return const ResponseModel(success: false, message: '알림 설정 변경에 실패했습니다.');
    }
  }

  @override
  Future<ResponseModel> deleteUser() async {
    final response = await _dataSource.deleteUser();
    return ResponseModel.fromJson(response);
  }
}
