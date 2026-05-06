// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileSummaryWrapper _$ProfileSummaryWrapperFromJson(
  Map<String, dynamic> json,
) => _ProfileSummaryWrapper(
  data: ProfileSummaryDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileSummaryWrapperToJson(
  _ProfileSummaryWrapper instance,
) => <String, dynamic>{'data': instance.data};

_ProfileSummaryDto _$ProfileSummaryDtoFromJson(Map<String, dynamic> json) =>
    _ProfileSummaryDto(
      businessName: json['businessName'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      approvalStatus: $enumDecodeNullable(
        _$ApprovalStatusEnumMap,
        json['approvalStatus'],
      ),
      orderCounts: ProfileOrderCountsDto.fromJson(
        json['orderCounts'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ProfileSummaryDtoToJson(_ProfileSummaryDto instance) =>
    <String, dynamic>{
      'businessName': instance.businessName,
      'role': _$RoleEnumMap[instance.role]!,
      'approvalStatus': _$ApprovalStatusEnumMap[instance.approvalStatus],
      'orderCounts': instance.orderCounts,
    };

const _$RoleEnumMap = {Role.USER: 'USER', Role.SELLER: 'SELLER'};

const _$ApprovalStatusEnumMap = {
  ApprovalStatus.PENDING: 'PENDING',
  ApprovalStatus.APPROVED: 'APPROVED',
  ApprovalStatus.REJECTED: 'REJECTED',
};

_ProfileOrderCountsDto _$ProfileOrderCountsDtoFromJson(
  Map<String, dynamic> json,
) => _ProfileOrderCountsDto(
  total: (json['total'] as num).toInt(),
  paymentPending: (json['paymentPending'] as num).toInt(),
  ordered: (json['ordered'] as num).toInt(),
  confirmed: (json['confirmed'] as num).toInt(),
  shipped: (json['shipped'] as num).toInt(),
  delivered: (json['delivered'] as num).toInt(),
  purchaseConfirmed: (json['purchaseConfirmed'] as num).toInt(),
  claimInProgress: (json['claimInProgress'] as num).toInt(),
  cancelled: (json['cancelled'] as num).toInt(),
);

Map<String, dynamic> _$ProfileOrderCountsDtoToJson(
  _ProfileOrderCountsDto instance,
) => <String, dynamic>{
  'total': instance.total,
  'paymentPending': instance.paymentPending,
  'ordered': instance.ordered,
  'confirmed': instance.confirmed,
  'shipped': instance.shipped,
  'delivered': instance.delivered,
  'purchaseConfirmed': instance.purchaseConfirmed,
  'claimInProgress': instance.claimInProgress,
  'cancelled': instance.cancelled,
};
