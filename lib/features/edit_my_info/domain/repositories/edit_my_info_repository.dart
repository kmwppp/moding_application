import 'package:moding_application/features/edit_my_info/domain/entities/get_my_info_response_dto.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/get_my_store_info_response_dto.dart';
import 'package:moding_application/features/edit_my_info/domain/entities/user_info_masking_response_dto.dart';
import 'package:moding_application/core/network/entities/response_model.dart';

abstract class EditMyInfoRepository {
  Future<GetMyInfoResponseWrapper> getMyInfo();

  Future<GetMyStoreInfoResponseWrapper> getMyStoreInfo();

  Future<UserInfoMaskingResponseWrapper> getMaskingMyInfo();

  Future<ResponseModel> patchNotificationSettings({
    required bool notificationEnabled,
  });
}
