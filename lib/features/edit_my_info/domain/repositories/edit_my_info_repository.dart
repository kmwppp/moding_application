import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/user_info_masking_response_dto.dart';

abstract class EditMyInfoRepository {
  Future<UserInfoMaskingResponseWrapper> getMaskingMyInfo();

  Future<ResponseModel> patchNotificationSettings({
    required bool notificationEnabled,
  });

  Future<ResponseModel> deleteUser();
}
