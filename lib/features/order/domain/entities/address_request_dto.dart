import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_request_dto.freezed.dart';
part 'address_request_dto.g.dart';

@freezed
abstract class AddressRequestDto with _$AddressRequestDto {
  const factory AddressRequestDto({
    required String name,
    required String recipientName,
    required String zipCode,
    required String address,
    required String addressDetail,
    required String phone,
    @Default(false) bool isDefault,
  }) = _AddressRequestDto;

  factory AddressRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AddressRequestDtoFromJson(json);
}
