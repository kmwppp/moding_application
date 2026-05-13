// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_request_business_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeRequestBusinessProfileResponseWrapper
_$ChangeRequestBusinessProfileResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _ChangeRequestBusinessProfileResponseWrapper(
  data: ChangeRequestBusinessProfileResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChangeRequestBusinessProfileResponseWrapperToJson(
  _ChangeRequestBusinessProfileResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_ChangeRequestBusinessProfileResponseDto
_$ChangeRequestBusinessProfileResponseDtoFromJson(Map<String, dynamic> json) =>
    _ChangeRequestBusinessProfileResponseDto(
      id: (json['id'] as num).toInt(),
      status: _statusFromJson(json['status'] as String),
      rejectionReason: json['rejectionReason'] as String?,
      pendingBusinessPhone: json['pendingBusinessPhone'] as String?,
      pendingParentCategoryName: json['pendingParentCategoryName'] as String?,
      pendingBusinessCategoryName:
          json['pendingBusinessCategoryName'] as String?,
      pendingLicenseFileUrl: json['pendingLicenseFileUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      reviewedAt: json['reviewedAt'] == null
          ? null
          : DateTime.parse(json['reviewedAt'] as String),
    );

Map<String, dynamic> _$ChangeRequestBusinessProfileResponseDtoToJson(
  _ChangeRequestBusinessProfileResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': _statusToJson(instance.status),
  'rejectionReason': instance.rejectionReason,
  'pendingBusinessPhone': instance.pendingBusinessPhone,
  'pendingParentCategoryName': instance.pendingParentCategoryName,
  'pendingBusinessCategoryName': instance.pendingBusinessCategoryName,
  'pendingLicenseFileUrl': instance.pendingLicenseFileUrl,
  'createdAt': instance.createdAt.toIso8601String(),
  'reviewedAt': instance.reviewedAt?.toIso8601String(),
};
