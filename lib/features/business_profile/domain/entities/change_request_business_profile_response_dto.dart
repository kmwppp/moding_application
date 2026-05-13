import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/business_change_request_status.dart';

part 'change_request_business_profile_response_dto.freezed.dart';
part 'change_request_business_profile_response_dto.g.dart';

@freezed
abstract class ChangeRequestBusinessProfileResponseWrapper
    with _$ChangeRequestBusinessProfileResponseWrapper {
  const factory ChangeRequestBusinessProfileResponseWrapper({
    required ChangeRequestBusinessProfileResponseDto data,
  }) = _ChangeRequestBusinessProfileResponseWrapper;

  factory ChangeRequestBusinessProfileResponseWrapper.fromJson(
    Map<String, dynamic> json,
  ) => _$ChangeRequestBusinessProfileResponseWrapperFromJson(json);
}

@freezed
abstract class ChangeRequestBusinessProfileResponseDto
    with _$ChangeRequestBusinessProfileResponseDto {
  const factory ChangeRequestBusinessProfileResponseDto({
    required int id,
    @JsonKey(fromJson: _statusFromJson, toJson: _statusToJson)
    required BusinessChangeRequestStatus status,

    String? rejectionReason,

    String? pendingBusinessPhone,
    String? pendingParentCategoryName,
    String? pendingBusinessCategoryName,
    String? pendingLicenseFileUrl,

    required DateTime createdAt,
    DateTime? reviewedAt,
  }) = _ChangeRequestBusinessProfileResponseDto;

  factory ChangeRequestBusinessProfileResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$ChangeRequestBusinessProfileResponseDtoFromJson(json);
}

BusinessChangeRequestStatus _statusFromJson(String value) {
  return BusinessChangeRequestStatus.fromCode(value) ??
      BusinessChangeRequestStatus.pending;
}

String _statusToJson(BusinessChangeRequestStatus value) => value.code;
