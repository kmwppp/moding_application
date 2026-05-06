import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';

part 'address_dto.g.dart';

@freezed
abstract class AddressDto with _$AddressDto {
  const factory AddressDto({
    required int id,
    required String name,
    required String recipientName,
    required String zipCode,
    required String address,
    required String addressDetail,
    required String phone,
    @Default(false) bool isDefault,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

@freezed
abstract class AddressListResponse with _$AddressListResponse {
  const factory AddressListResponse({required List<AddressDto> data}) =
      _AddressListResponse;

  factory AddressListResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressListResponseFromJson(json);
}
