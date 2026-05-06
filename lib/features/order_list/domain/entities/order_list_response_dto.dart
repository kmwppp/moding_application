import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

part 'order_list_response_dto.freezed.dart';
part 'order_list_response_dto.g.dart';

const bool useTemporaryOrderListShippingFallback = true;

int _shippingLeadTimeFromJson(Object? value) => _intFromJson(value, 0);

int _deliveryDaysFromJson(Object? value) => _intFromJson(value, 0);

bool _weekendDeliveryAvailabilityFromJson(Object? value) =>
    _boolFromJson(value, false);

bool _isSameDayShippingFromJson(Object? value) => _boolFromJson(value, false);

String _shippingCutoffTimeFromJson(Object? value) => _stringFromJson(value, '');

int _intFromJson(Object? value, int fallback) {
  if (value == null && useTemporaryOrderListShippingFallback) return fallback;
  return (value as num).toInt();
}

bool _boolFromJson(Object? value, bool fallback) {
  if (value == null && useTemporaryOrderListShippingFallback) return fallback;
  return value as bool;
}

String _stringFromJson(Object? value, String fallback) {
  if (value == null && useTemporaryOrderListShippingFallback) return fallback;
  return value as String;
}

@freezed
abstract class OrderListResponseWrapper with _$OrderListResponseWrapper {
  const factory OrderListResponseWrapper({required OrderListResponseDto data}) =
      _OrderListResponseWrapper;

  factory OrderListResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponseWrapperFromJson(json);
}

@freezed
abstract class OrderListResponseDto with _$OrderListResponseDto {
  const factory OrderListResponseDto({
    required List<OrderListItemDto> content,
    required int number,
    required int size,
    required int totalElements,
    required int totalPages,
  }) = _OrderListResponseDto;

  factory OrderListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponseDtoFromJson(json);
}

@freezed
abstract class OrderListItemDto with _$OrderListItemDto {
  const factory OrderListItemDto({
    required int id,
    required String orderCode,
    required String deliveryAddressName,
    required String deliveryAddressRecipientName,
    required String deliveryAddressPhone,
    required String deliveryAddressFull,
    required String status,
    required int totalAmount,
    String? rejectionReason,
    int? claimId,
    int? paymentId,
    bool? isReviewable,

    required List<OrderListProductItemDto> items,
    @LocalDateTimeConverter() required DateTime createdAt,
  }) = _OrderListItemDto;

  factory OrderListItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderListItemDtoFromJson(json);
}

@freezed
abstract class OrderListProductItemDto with _$OrderListProductItemDto {
  const factory OrderListProductItemDto({
    required int id,
    required int productId,
    required String thumbnailImageUrl,
    required String productName,
    required String optionName,
    required int unitPrice,
    required int quantity,
    required int totalPrice,
    @JsonKey(fromJson: _shippingLeadTimeFromJson) required int shippingLeadTime,
    @JsonKey(fromJson: _deliveryDaysFromJson) required int deliveryDays,
    @JsonKey(fromJson: _weekendDeliveryAvailabilityFromJson)
    required bool weekendDeliveryAvailability,
    @JsonKey(fromJson: _isSameDayShippingFromJson)
    required bool isSameDayShipping,
    @JsonKey(fromJson: _shippingCutoffTimeFromJson)
    required String shippingCutoffTime,
  }) = _OrderListProductItemDto;

  factory OrderListProductItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderListProductItemDtoFromJson(json);
}
