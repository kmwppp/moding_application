import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_permits_dto.freezed.dart';
part 'category_permits_dto.g.dart';

@freezed
abstract class CategoryPermitsResponseWrapper
    with _$CategoryPermitsResponseWrapper {
  const factory CategoryPermitsResponseWrapper({
    required List<CategoryPermitsDto> data,
  }) = _CategoryPermitsResponseWrapper;

  factory CategoryPermitsResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$CategoryPermitsResponseWrapperFromJson(json);
}

@freezed
abstract class CategoryPermitsDto with _$CategoryPermitsDto {
  const factory CategoryPermitsDto({
    required int id,
    int? parentId,
    required String name,
    required int sortOrder,
    required List<CategoryPermitsDto> children, // 🔥 재귀
  }) = _CategoryPermitsDto;

  factory CategoryPermitsDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryPermitsDtoFromJson(json);
}
