import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_info_dto.freezed.dart';
part 'seller_info_dto.g.dart';

@freezed
abstract class SellerInfoDto with _$SellerInfoDto {
  const factory SellerInfoDto({
    required int sellerProfileId,
    required String businessName,
    required String ownerName,
    required String businessNumber,
    required String address,
    required String phone,
  }) = _SellerInfoDto;

  factory SellerInfoDto.fromJson(Map<String, dynamic> json) =>
      _$SellerInfoDtoFromJson(json);
}
