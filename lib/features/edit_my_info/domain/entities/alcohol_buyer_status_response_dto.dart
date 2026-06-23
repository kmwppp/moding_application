import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/features/edit_my_info/domain/enums/alcohol_buyer_status.dart';

part 'alcohol_buyer_status_response_dto.freezed.dart';
part 'alcohol_buyer_status_response_dto.g.dart';

@freezed
abstract class AlcoholBuyerStatusResponseWrapper
    with _$AlcoholBuyerStatusResponseWrapper {
  const factory AlcoholBuyerStatusResponseWrapper({
    required AlcoholBuyerStatusData data,
  }) = _AlcoholBuyerStatusResponseWrapper;

  factory AlcoholBuyerStatusResponseWrapper.fromJson(
    Map<String, dynamic> json,
  ) => _$AlcoholBuyerStatusResponseWrapperFromJson(json);
}

@freezed
abstract class AlcoholBuyerStatusData with _$AlcoholBuyerStatusData {
  const factory AlcoholBuyerStatusData({
    @JsonKey(fromJson: AlcoholBuyerStatus.fromJson)
    required AlcoholBuyerStatus status,
    String? rejectReason,
  }) = _AlcoholBuyerStatusData;

  factory AlcoholBuyerStatusData.fromJson(Map<String, dynamic> json) =>
      _$AlcoholBuyerStatusDataFromJson(json);
}
