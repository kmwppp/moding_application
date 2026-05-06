import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_category_dto.freezed.dart';
part 'main_category_dto.g.dart';

@freezed
abstract class MainCategoryResponseDto with _$MainCategoryResponseDto {
  const factory MainCategoryResponseDto({required List<MainCategoryDto> data}) =
      _MainCategoryResponseDto;

  factory MainCategoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MainCategoryResponseDtoFromJson(json);
}

@freezed
abstract class MainCategoryDto with _$MainCategoryDto {
  const factory MainCategoryDto({
    required int id,
    int? parentId,
    required String name,
    int? sortOrder,
    List<MainCategoryDto>? children,
  }) = _MainCategoryDto;

  factory MainCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$MainCategoryDtoFromJson(json);
}
