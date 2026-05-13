import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_option_dto.freezed.dart';
part 'meta_option_dto.g.dart';

@freezed
abstract class MetaOptionDto with _$MetaOptionDto {
  const factory MetaOptionDto({
    required String value,
    required String label,
    String? path,
  }) = _MetaOptionDto;

  factory MetaOptionDto.fromJson(Map<String, dynamic> json) =>
      _$MetaOptionDtoFromJson(json);
}
