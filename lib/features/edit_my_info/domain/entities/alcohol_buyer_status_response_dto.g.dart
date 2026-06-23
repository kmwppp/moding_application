// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alcohol_buyer_status_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AlcoholBuyerStatusResponseWrapper _$AlcoholBuyerStatusResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _AlcoholBuyerStatusResponseWrapper(
  data: AlcoholBuyerStatusData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AlcoholBuyerStatusResponseWrapperToJson(
  _AlcoholBuyerStatusResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};

_AlcoholBuyerStatusData _$AlcoholBuyerStatusDataFromJson(
  Map<String, dynamic> json,
) => _AlcoholBuyerStatusData(
  status: AlcoholBuyerStatus.fromJson(json['status'] as String),
  rejectReason: json['rejectReason'] as String?,
);

Map<String, dynamic> _$AlcoholBuyerStatusDataToJson(
  _AlcoholBuyerStatusData instance,
) => <String, dynamic>{
  'status': _$AlcoholBuyerStatusEnumMap[instance.status]!,
  'rejectReason': instance.rejectReason,
};

const _$AlcoholBuyerStatusEnumMap = {
  AlcoholBuyerStatus.none: 'none',
  AlcoholBuyerStatus.pending: 'pending',
  AlcoholBuyerStatus.approved: 'approved',
  AlcoholBuyerStatus.rejected: 'rejected',
};
