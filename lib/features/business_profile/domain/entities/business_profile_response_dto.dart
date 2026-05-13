import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/business_change_request_status.dart';

part 'business_profile_response_dto.freezed.dart';
part 'business_profile_response_dto.g.dart';

@freezed
abstract class BusinessProfileResponseWrapper
    with _$BusinessProfileResponseWrapper {
  const factory BusinessProfileResponseWrapper({
    required BusinessProfileResponseDto data,
  }) = _BusinessProfileResponseWrapper;

  factory BusinessProfileResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileResponseWrapperFromJson(json);
}

@freezed
abstract class BusinessProfileResponseDto with _$BusinessProfileResponseDto {
  const factory BusinessProfileResponseDto({
    required int id,
    String? businessName,
    String? ownerName,
    String? zipCode,
    String? address,
    String? addressDetail,
    String? businessNumber,
    String? businessPhone,
    String? industry,
    String? industryClass,
    String? parentCategoryName,
    String? businessCategoryName,
    @JsonKey(
      fromJson: _latestChangeRequestStatusFromJson,
      toJson: _latestChangeRequestStatusToJson,
    )
    BusinessChangeRequestStatus? latestChangeRequestStatus,
    required DateTime createdAt,
  }) = _BusinessProfileResponseDto;

  factory BusinessProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileResponseDtoFromJson(json);
}

BusinessChangeRequestStatus? _latestChangeRequestStatusFromJson(dynamic value) {
  return BusinessChangeRequestStatus.fromCode(value as String?);
}

String? _latestChangeRequestStatusToJson(BusinessChangeRequestStatus? value) {
  return value?.code;
}
