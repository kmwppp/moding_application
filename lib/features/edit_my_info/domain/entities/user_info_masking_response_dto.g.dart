// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_masking_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoMaskingResponseWrapper _$UserInfoMaskingResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _UserInfoMaskingResponseWrapper(
  data: UserInfoMaskingResponseDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UserInfoMaskingResponseWrapperToJson(
  _UserInfoMaskingResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_UserInfoMaskingResponseDto _$UserInfoMaskingResponseDtoFromJson(
  Map<String, dynamic> json,
) => _UserInfoMaskingResponseDto(
  loginId: json['loginId'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  businessProfile: json['businessProfile'] == null
      ? null
      : BusinessProfileDto.fromJson(
          json['businessProfile'] as Map<String, dynamic>,
        ),
  refundAccount: json['refundAccount'] == null
      ? null
      : RefundAccountDto.fromJson(
          json['refundAccount'] as Map<String, dynamic>,
        ),
  isNotificationEnabled: json['isNotificationEnabled'] as bool,
);

Map<String, dynamic> _$UserInfoMaskingResponseDtoToJson(
  _UserInfoMaskingResponseDto instance,
) => <String, dynamic>{
  'loginId': instance.loginId,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'businessProfile': instance.businessProfile,
  'refundAccount': instance.refundAccount,
  'isNotificationEnabled': instance.isNotificationEnabled,
};

_BusinessProfileDto _$BusinessProfileDtoFromJson(Map<String, dynamic> json) =>
    _BusinessProfileDto(
      businessName: json['businessName'] as String,
      zipCode: json['zipCode'] as String,
      address: json['address'] as String,
      addressDetail: json['addressDetail'] as String?,
      businessNumber: json['businessNumber'] as String,
      ownerName: json['ownerName'] as String,
      parentCategoryName: json['parentCategoryName'] as String,
      businessCategoryName: json['businessCategoryName'] as String,
      businessPhone: json['businessPhone'] as String?,
    );

Map<String, dynamic> _$BusinessProfileDtoToJson(_BusinessProfileDto instance) =>
    <String, dynamic>{
      'businessName': instance.businessName,
      'zipCode': instance.zipCode,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
      'businessNumber': instance.businessNumber,
      'ownerName': instance.ownerName,
      'parentCategoryName': instance.parentCategoryName,
      'businessCategoryName': instance.businessCategoryName,
      'businessPhone': instance.businessPhone,
    };

_RefundAccountDto _$RefundAccountDtoFromJson(Map<String, dynamic> json) =>
    _RefundAccountDto(
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
    );

Map<String, dynamic> _$RefundAccountDtoToJson(_RefundAccountDto instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'accountNumber': instance.accountNumber,
    };
