import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_my_store_info_response_dto.freezed.dart';
part 'get_my_store_info_response_dto.g.dart';

@freezed
abstract class GetMyStoreInfoResponseWrapper
    with _$GetMyStoreInfoResponseWrapper {
  const factory GetMyStoreInfoResponseWrapper({
    required GetMyStoreInfoResponseDto data,
  }) = _GetMyStoreInfoResponseWrapper;

  factory GetMyStoreInfoResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$GetMyStoreInfoResponseWrapperFromJson(json);
}

@freezed
abstract class GetMyStoreInfoResponseDto with _$GetMyStoreInfoResponseDto {
  const factory GetMyStoreInfoResponseDto({
    required int userId,
    required String loginId,
    required String email,
    required String phone,

    required String role,
    required String status,

    required int id,
    required String businessName,
    required String ownerName,

    required String zipCode,
    required String address,
    required String addressDetail,

    required String businessNumber,
    required String businessType,

    required int businessCategoryId,
    required String businessCategoryName,

    required DateTime createdAt,
  }) = _GetMyStoreInfoResponseDto;

  factory GetMyStoreInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetMyStoreInfoResponseDtoFromJson(json);
}
