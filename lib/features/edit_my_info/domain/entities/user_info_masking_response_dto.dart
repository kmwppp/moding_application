import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_masking_response_dto.freezed.dart';
part 'user_info_masking_response_dto.g.dart';

@freezed
abstract class UserInfoMaskingResponseWrapper
    with _$UserInfoMaskingResponseWrapper {
  const factory UserInfoMaskingResponseWrapper({
    required UserInfoMaskingResponseDto data,
  }) = _UserInfoMaskingResponseWrapper;

  factory UserInfoMaskingResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$UserInfoMaskingResponseWrapperFromJson(json);
}

@freezed
abstract class UserInfoMaskingResponseDto with _$UserInfoMaskingResponseDto {
  const factory UserInfoMaskingResponseDto({
    required String loginId,
    required String name,
    required String email,
    required String phone,

    BusinessProfileDto? businessProfile,
    RefundAccountDto? refundAccount,

    required bool isNotificationEnabled,
  }) = _UserInfoMaskingResponseDto;

  factory UserInfoMaskingResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserInfoMaskingResponseDtoFromJson(json);
}

@freezed
abstract class BusinessProfileDto with _$BusinessProfileDto {
  const factory BusinessProfileDto({
    required String businessName,
    required String zipCode,
    required String address,
    String? addressDetail,
    required String businessNumber,
    required String ownerName,
    required String parentCategoryName,
    required String businessCategoryName,
    String? businessPhone,
    String? industry,
    String? industryClass,
  }) = _BusinessProfileDto;

  factory BusinessProfileDto.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileDtoFromJson(json);
}

@freezed
abstract class RefundAccountDto with _$RefundAccountDto {
  const factory RefundAccountDto({
    required String bankName,
    required String accountNumber,
  }) = _RefundAccountDto;

  factory RefundAccountDto.fromJson(Map<String, dynamic> json) =>
      _$RefundAccountDtoFromJson(json);
}
