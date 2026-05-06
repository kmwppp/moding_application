// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TermsItemDto _$TermsItemDtoFromJson(Map<String, dynamic> json) =>
    _TermsItemDto(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$TermsTypeEnumMap, json['type']),
      typeLabel: json['typeLabel'] as String,
      pdfUrl: json['pdfUrl'] as String,
      createdAt: const LocalDateTimeConverter().fromJson(
        json['createdAt'] as String,
      ),
    );

Map<String, dynamic> _$TermsItemDtoToJson(_TermsItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TermsTypeEnumMap[instance.type]!,
      'typeLabel': instance.typeLabel,
      'pdfUrl': instance.pdfUrl,
      'createdAt': const LocalDateTimeConverter().toJson(instance.createdAt),
    };

const _$TermsTypeEnumMap = {
  TermsType.service: 'SERVICE',
  TermsType.privacyPolicy: 'PRIVACY_POLICY',
  TermsType.common: 'COMMON',
  TermsType.buyer: 'BUYER',
  TermsType.seller: 'SELLER',
  TermsType.electronicFinancial: 'ELECTRONIC_FINANCIAL',
  TermsType.purchase: 'PURCHASE',
  TermsType.shippingClaims: 'SHIPPING_CLAIMS',
  TermsType.requiredNotice: 'REQUIRED_NOTICE',
  TermsType.settlementServiceAgreement: 'SETTLEMENT_SERVICE_AGREEMENT',
  TermsType.consentCollectionPersonalInfo: 'CONSENT_COLLECTION_PERSONAL_INFO',
  TermsType.personalInfoThirdParties: 'PERSONAL_INFO_THIRD_PARTIES',
  TermsType.orderPurchase: 'ORDER_PURCHASE',
  TermsType.orderElectronicFinancial: 'ORDER_ELECTRONIC_FINANCIAL',
  TermsType.orderConsentCollectionPersonalInfo:
      'ORDER_CONSENT_COLLECTION_PERSONAL_INFO',
  TermsType.orderPersonalInfoThirdParties: 'ORDER_PERSONAL_INFO_THIRD_PARTIES',
};

_TermsDto _$TermsDtoFromJson(Map<String, dynamic> json) => _TermsDto(
  data: (json['data'] as List<dynamic>)
      .map((e) => TermsItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TermsDtoToJson(_TermsDto instance) => <String, dynamic>{
  'data': instance.data,
};
