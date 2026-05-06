import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';
import 'package:moding_application/features/claim_check/domain/enums/claim_resolution.dart';
import 'package:moding_application/features/claim_check/domain/enums/claim_status.dart';
import 'package:moding_application/features/claim_check/domain/enums/claim_type.dart';
import 'package:moding_application/features/claim_check/domain/enums/reship_delivery_method.dart';

part 'claim_check_response_dto.freezed.dart';
part 'claim_check_response_dto.g.dart';

@freezed
abstract class ClaimCheckResponseWrapper with _$ClaimCheckResponseWrapper {
  const factory ClaimCheckResponseWrapper({
    required ClaimCheckResponseDto data,
  }) = _ClaimCheckResponseWrapper;

  factory ClaimCheckResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$ClaimCheckResponseWrapperFromJson(json);
}

@freezed
abstract class ClaimCheckResponseDto with _$ClaimCheckResponseDto {
  const factory ClaimCheckResponseDto({
    required int id,
    required String claimCode,
    required int orderId,
    required String orderCode,
    required String sellerBusinessName,
    @LocalDateTimeConverter() required DateTime createdAt,

    @JsonKey(fromJson: ClaimType.fromJson, toJson: ClaimType.toJson)
    required ClaimType claimType,
    required String claimReason,

    required List<ClaimCheckItemDto> items,

    required int totalRefundAmount,
    required List<String> photoUrls,

    @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)
    required ClaimStatus status,
    @JsonKey(fromJson: ClaimResolution.fromJson, toJson: ClaimResolution.toJson)
    ClaimResolution? resolution,

    String? rejectReason,
    String? appealReason,
    @NullableLocalDateTimeConverter() DateTime? appealDeadlineAt,

    @JsonKey(
      fromJson: ReshipDeliveryMethod.fromJson,
      toJson: ReshipDeliveryMethod.toJson,
    )
    ReshipDeliveryMethod? reshipDeliveryMethod,
    String? reshipCourierCode,
    String? reshipTrackingNumber,
    @NullableLocalDateTimeConverter() DateTime? reshipShippedAt,

    required List<ClaimCheckStatusHistoryDto> statusHistories,

    @NullableLocalDateTimeConverter() DateTime? deliveredAt,
    @LocalDateTimeConverter() required DateTime updatedAt,
  }) = _ClaimCheckResponseDto;

  factory ClaimCheckResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ClaimCheckResponseDtoFromJson(json);
}

@freezed
abstract class ClaimCheckItemDto with _$ClaimCheckItemDto {
  const factory ClaimCheckItemDto({
    required int id,
    required int orderItemId,
    required String productName,
    required String optionName,
    required int unitPrice,
    required int quantity,
    required int claimedQuantity,
    required int refundAmount,
    String? thumbnailImageUrl,
  }) = _ClaimCheckItemDto;

  factory ClaimCheckItemDto.fromJson(Map<String, dynamic> json) =>
      _$ClaimCheckItemDtoFromJson(json);
}

@freezed
abstract class ClaimCheckStatusHistoryDto with _$ClaimCheckStatusHistoryDto {
  const factory ClaimCheckStatusHistoryDto({
    required int id,
    @JsonKey(fromJson: ClaimStatus.fromJson, toJson: ClaimStatus.toJson)
    required ClaimStatus status,
    String? memo,
    @LocalDateTimeConverter() required DateTime createdAt,
  }) = _ClaimCheckStatusHistoryDto;

  factory ClaimCheckStatusHistoryDto.fromJson(Map<String, dynamic> json) =>
      _$ClaimCheckStatusHistoryDtoFromJson(json);
}
