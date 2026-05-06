import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moding_application/core/network/converters/local_date_time_converter.dart';

import '../enums/terms_type.dart';

part 'terms_item_dto.freezed.dart';
part 'terms_item_dto.g.dart';

@freezed
abstract class TermsItemDto with _$TermsItemDto {
  const factory TermsItemDto({
    required int id,
    required TermsType type,
    required String typeLabel,
    required String pdfUrl,
    @LocalDateTimeConverter() required DateTime createdAt,
  }) = _TermsItemDto;

  factory TermsItemDto.fromJson(Map<String, dynamic> json) =>
      _$TermsItemDtoFromJson(json);
}

@freezed
abstract class TermsDto with _$TermsDto {
  const factory TermsDto({required List<TermsItemDto> data}) = _TermsDto;

  factory TermsDto.fromJson(Map<String, dynamic> json) =>
      _$TermsDtoFromJson(json);
}
